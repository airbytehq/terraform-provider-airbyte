package setplanmodifier

import (
	"context"
	"fmt"
	"strings"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// UniqueByNameAndNamespace returns a plan modifier that correlates set elements
// between state and plan using (name, namespace) as the composite identity key.
//
// This is used for connection streams, where the identity key is the pair
// (name, namespace). It ensures that computed fields (cursor_field, primary_key)
// stay associated with the correct stream regardless of element ordering.
//
// When the plan value is unknown, the state value is propagated as-is (same
// as SuppressDiff). When both plan and state are known, elements are matched
// by their composite key and computed attributes from state are carried over
// to the plan, preserving source-defined values across read/plan cycles.
func UniqueByNameAndNamespace() planmodifier.Set {
	return uniqueByNameAndNamespace{keys: []string{"name", "namespace"}}
}

type uniqueByNameAndNamespace struct {
	keys []string
}

func (m uniqueByNameAndNamespace) Description(_ context.Context) string {
	return fmt.Sprintf("Correlates set elements by composite key (%s) instead of by hash.", strings.Join(m.keys, ", "))
}

func (m uniqueByNameAndNamespace) MarkdownDescription(_ context.Context) string {
	return fmt.Sprintf("Correlates set elements by composite key (`%s`) instead of by hash.", strings.Join(m.keys, "`, `"))
}

func (m uniqueByNameAndNamespace) PlanModifySet(ctx context.Context, req planmodifier.SetRequest, resp *planmodifier.SetResponse) {
	// If the entire resource is being created, nothing to correlate.
	if req.StateValue.IsNull() || req.StateValue.IsUnknown() {
		return
	}

	// If the plan is unknown, propagate state (same as SuppressDiff).
	if req.PlanValue.IsUnknown() {
		resp.PlanValue = req.StateValue
		return
	}

	// If config is null/unknown, don't interfere.
	if req.ConfigValue.IsNull() || req.ConfigValue.IsUnknown() {
		return
	}

	// Both plan and state are known sets. Correlate elements by key.
	stateElems := req.StateValue.Elements()
	planElems := req.PlanValue.Elements()

	// Build a lookup from composite key -> state element.
	stateByKey := make(map[string]attr.Value, len(stateElems))
	for _, elem := range stateElems {
		key := m.compositeKey(elem)
		if key == "" {
			continue
		}
		if _, exists := stateByKey[key]; exists {
			resp.Diagnostics.AddError(
				"Duplicate composite key in state",
				fmt.Sprintf(
					"Multiple state elements share composite key %q for fields (%s). Each element must have a unique identity.",
					key,
					strings.Join(m.keys, ", "),
				),
			)
			return
		}
		stateByKey[key] = elem
	}

	// Build a config lookup so we can distinguish "user didn't specify" (null in
	// config) from "user explicitly set to null" when merging computed values.
	configElems := req.ConfigValue.Elements()
	configByKey := make(map[string]attr.Value, len(configElems))
	for _, elem := range configElems {
		key := m.compositeKey(elem)
		if key != "" {
			configByKey[key] = elem
		}
	}

	// For each plan element, if we find a matching state element by key,
	// carry over computed attributes (cursor_field, primary_key) that are
	// unknown or null-from-SuppressDiff in the plan but known in state.
	// Note: inner plan modifiers (e.g. SuppressDiff on cursor_field) run
	// before this set-level modifier, so they may have already converted
	// unknown → null when no hash-matched state element was found.
	merged := make([]attr.Value, 0, len(planElems))
	for _, planElem := range planElems {
		key := m.compositeKey(planElem)
		stateElem, found := stateByKey[key]
		if found && key != "" {
			configElem := configByKey[key] // may be zero-value if not found
			mergedElem := m.mergeComputedFromState(planElem, stateElem, configElem)
			merged = append(merged, mergedElem)
		} else {
			merged = append(merged, planElem)
		}
	}

	newSet, diags := types.SetValue(req.PlanValue.ElementType(ctx), merged)
	resp.Diagnostics.Append(diags...)
	if !resp.Diagnostics.HasError() {
		resp.PlanValue = newSet
	}
}

// compositeKey extracts the composite key from a set element (assumed to be an Object).
func (m uniqueByNameAndNamespace) compositeKey(elem attr.Value) string {
	obj, ok := elem.(basetypes.ObjectValue)
	if !ok {
		return ""
	}
	attrs := obj.Attributes()
	parts := make([]string, 0, len(m.keys))
	for _, k := range m.keys {
		v, exists := attrs[k]
		if !exists || v.IsNull() || v.IsUnknown() {
			parts = append(parts, "")
			continue
		}
		if sv, ok := v.(basetypes.StringValue); ok {
			parts = append(parts, sv.ValueString())
		} else {
			parts = append(parts, v.String())
		}
	}
	// If the first key (name) is empty, we can't reliably correlate.
	if len(parts) > 0 && parts[0] == "" {
		return ""
	}
	return strings.Join(parts, "\x00")
}

// mergeComputedFromState copies computed attribute values from state into the
// plan element when the user didn't explicitly configure them. This preserves
// source-defined computed values (cursor_field, primary_key) across plan cycles.
//
// We merge from state when the plan attribute is unknown, null, OR an empty
// collection (empty list/set), because:
//   - Inner plan modifiers (e.g. SuppressDiff on cursor_field) execute before
//     this set-level modifier and may convert unknown → null when no
//     hash-matched state element was found.
//   - The API may return empty arrays (e.g. primary_key: []) which Terraform
//     represents as empty lists, while state may have null. Both are
//     semantically "not set", but they produce different set hashes, causing
//     phantom remove+add diffs.
//
// To avoid overwriting user intent, we only merge when the corresponding
// config attribute is also null/missing/empty (meaning user didn't specify it).
func (m uniqueByNameAndNamespace) mergeComputedFromState(planElem, stateElem, configElem attr.Value) attr.Value {
	planObj, planOk := planElem.(basetypes.ObjectValue)
	stateObj, stateOk := stateElem.(basetypes.ObjectValue)
	if !planOk || !stateOk {
		return planElem
	}

	// Extract config attributes if available, to distinguish "user didn't
	// specify" from "user explicitly set to null".
	var configAttrs map[string]attr.Value
	if configObj, ok := configElem.(basetypes.ObjectValue); ok {
		configAttrs = configObj.Attributes()
	}

	planAttrs := planObj.Attributes()
	stateAttrs := stateObj.Attributes()

	merged := make(map[string]attr.Value, len(planAttrs))
	for k, planVal := range planAttrs {
		if isEffectivelyEmpty(planVal) {
			// Check if the user explicitly configured this attribute.
			// If so, respect their intent (don't merge from state).
			if configAttrs != nil {
				if cfgVal, exists := configAttrs[k]; exists && !isEffectivelyEmpty(cfgVal) {
					merged[k] = planVal
					continue
				}
			}
			// User didn't specify this attribute — use state value if available.
			if stateVal, exists := stateAttrs[k]; exists && !stateVal.IsUnknown() {
				merged[k] = stateVal
			} else {
				merged[k] = planVal
			}
		} else {
			merged[k] = planVal
		}
	}

	result, diags := basetypes.NewObjectValue(planObj.AttributeTypes(context.Background()), merged)
	if diags.HasError() {
		return planElem
	}
	return result
}

// isEffectivelyEmpty returns true if the value is null, unknown, or a
// collection (list/set) with zero elements. This treats null and empty
// collections as semantically equivalent for merge purposes, preventing
// phantom diffs caused by null-vs-empty-list hash mismatches.
func isEffectivelyEmpty(v attr.Value) bool {
	if v.IsNull() || v.IsUnknown() {
		return true
	}
	if lv, ok := v.(basetypes.ListValue); ok {
		return len(lv.Elements()) == 0
	}
	if sv, ok := v.(basetypes.SetValue); ok {
		return len(sv.Elements()) == 0
	}
	return false
}
