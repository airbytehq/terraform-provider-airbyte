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

// UniqueByKey returns a plan modifier that correlates set elements between
// state and plan using (name, namespace) as the composite identity key.
//
// This is used for connection streams, where the identity key is the pair
// (name, namespace). It ensures that computed fields (cursor_field, primary_key)
// stay associated with the correct stream regardless of element ordering.
//
// When the plan value is unknown, the state value is propagated as-is (same
// as SuppressDiff). When both plan and state are known, elements are matched
// by their composite key and computed attributes from state are carried over
// to the plan, preserving source-defined values across read/plan cycles.
func UniqueByKey() planmodifier.Set {
	return uniqueByKey{keys: []string{"name", "namespace"}}
}

type uniqueByKey struct {
	keys []string
}

func (m uniqueByKey) Description(_ context.Context) string {
	return fmt.Sprintf("Correlates set elements by composite key (%s) instead of by hash.", strings.Join(m.keys, ", "))
}

func (m uniqueByKey) MarkdownDescription(_ context.Context) string {
	return fmt.Sprintf("Correlates set elements by composite key (`%s`) instead of by hash.", strings.Join(m.keys, "`, `"))
}

func (m uniqueByKey) PlanModifySet(ctx context.Context, req planmodifier.SetRequest, resp *planmodifier.SetResponse) {
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

	// For each plan element, if we find a matching state element by key,
	// carry over computed attributes (cursor_field, primary_key) that are
	// unknown in the plan but known in state.
	merged := make([]attr.Value, 0, len(planElems))
	for _, planElem := range planElems {
		key := m.compositeKey(planElem)
		stateElem, found := stateByKey[key]
		if found && key != "" {
			mergedElem := m.mergeComputedFromState(planElem, stateElem)
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
func (m uniqueByKey) compositeKey(elem attr.Value) string {
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

// mergeComputedFromState copies unknown attribute values from state into the
// plan element. This preserves source-defined computed values (cursor_field,
// primary_key) that the user didn't specify in their config.
func (m uniqueByKey) mergeComputedFromState(planElem, stateElem attr.Value) attr.Value {
	planObj, planOk := planElem.(basetypes.ObjectValue)
	stateObj, stateOk := stateElem.(basetypes.ObjectValue)
	if !planOk || !stateOk {
		return planElem
	}

	planAttrs := planObj.Attributes()
	stateAttrs := stateObj.Attributes()

	merged := make(map[string]attr.Value, len(planAttrs))
	for k, planVal := range planAttrs {
		if planVal.IsUnknown() {
			// Use state value for unknown plan attributes (computed fields).
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
