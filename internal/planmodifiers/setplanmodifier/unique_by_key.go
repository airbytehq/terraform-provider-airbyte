package setplanmodifier

import (
	"context"
	"fmt"

	"github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/utils"

	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// UniqueByKey returns plan modifier that identifies each item in a set by a primary key (e.g name)
func UniqueByKey(key string) planmodifier.Set {
	return uniqueByKey{
		key: key,
	}
}

// uniqueByKey implements the plan modifier.
type uniqueByKey struct {
	key string
}

// Description returns a human-readable description of the plan modifier.
func (m uniqueByKey) Description(_ context.Context) string {
	return "Once set, the value of this attribute in state will not change."
}

// MarkdownDescription returns a markdown description of the plan modifier.
func (m uniqueByKey) MarkdownDescription(_ context.Context) string {
	return "Once set, the value of this attribute in state will not change."
}

// PlanModifySet implements the plan modification logic.
func (m uniqueByKey) PlanModifySet(ctx context.Context, req planmodifier.SetRequest, resp *planmodifier.SetResponse) {
	// Do nothing if there is an unknown configuration value
	if req.ConfigValue.IsUnknown() {
		return
	}

	if utils.IsAllStateUnknown(ctx, req.State) {
		return
	}

	// Create a map of all of the request plan elements, keyed by `m.key`
	elementsByKey := make(map[string]types.Object)
	for _, elem := range req.PlanValue.Elements() {
		obj, ok := elem.(types.Object)
		if !ok {
			resp.Diagnostics.AddError(
				"Error modifying set",
				fmt.Sprintf("Expected object element, got %T", elem),
			)
			return
		}

		v, ok := obj.Attributes()[m.key]
		if ok {
			elementsByKey[v.String()] = obj
		}
	}

	var updatedElements []types.Object

	// Walk all the elements in the response plan and update any fields that have either an unknown or unset value
	for _, elem := range resp.PlanValue.Elements() {
		obj, ok := elem.(types.Object)
		if !ok {
			resp.Diagnostics.AddError(
				"Error modifying set",
				fmt.Sprintf("Expected object element, got %T", elem),
			)
			return
		}

		elemKey := obj.Attributes()[m.key]
		srcObj, ok := elementsByKey[elemKey.String()]
		if !ok {
			resp.Diagnostics.AddError(
				"Error modifying set",
				fmt.Sprintf("No object found with %s=%s", m.key, elemKey.String()),
			)
			return
		}

		for k, v := range srcObj.Attributes() {
			obj.Attributes()[k] = v
		}

		updatedElements = append(updatedElements, obj)
	}

	newPlanValue, diags := types.SetValueFrom(ctx, resp.PlanValue.ElementType(ctx), updatedElements)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.PlanValue = newPlanValue
}
