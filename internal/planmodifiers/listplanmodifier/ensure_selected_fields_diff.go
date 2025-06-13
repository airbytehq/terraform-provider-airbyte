package listplanmodifier

import (
	"context"
	"fmt"
	"slices"

	"github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/utils"

	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// EnsureSelectedFieldsDiff returns a plan modifier for streams ensuring the order of field paths is consistent
func EnsureSelectedFieldsDiff() planmodifier.List {
	return ensureSelectedFieldsDiff{}
}

// ensureSelectedFieldsDiff implements the plan modifier.
type ensureSelectedFieldsDiff struct{}

// Description returns a human-readable description of the plan modifier.
func (m ensureSelectedFieldsDiff) Description(_ context.Context) string {
	return "Ensure the order of field paths is consistent"
}

// MarkdownDescription returns a markdown description of the plan modifier.
func (m ensureSelectedFieldsDiff) MarkdownDescription(_ context.Context) string {
	return "Ensure the order of field paths is consistent"
}

// PlanModifyList implements the plan modification logic.
func (m ensureSelectedFieldsDiff) PlanModifyList(ctx context.Context, req planmodifier.ListRequest, resp *planmodifier.ListResponse) {
	// Do nothing if there is an unknown configuration value
	if req.ConfigValue.IsUnknown() {
		return
	}

	if utils.IsAllStateUnknown(ctx, req.State) {
		return
	}

	// Extract the elements from the plan value
	elements := []types.Object{}
	for _, elem := range req.PlanValue.Elements() {
		obj, ok := elem.(types.Object)
		if !ok {
			resp.Diagnostics.AddError(
				"Error modifying list",
				fmt.Sprintf("Expected object element, got %T", elem),
			)
			return
		}

		_, ok = obj.Attributes()["field_path"]
		if ok {
			elements = append(elements, obj)
		}
	}

	slices.SortFunc(elements, fieldPathCmp)

	newPlanValue, diags := types.ListValueFrom(ctx, resp.PlanValue.ElementType(ctx), elements)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.PlanValue = newPlanValue
}

// Sort objects by the length of the field path first, then by the field path lexicographically.
func fieldPathCmp(a, b types.Object) int {
	aLen := len(a.Attributes()["field_path"].String())
	bLen := len(b.Attributes()["field_path"].String())

	if aLen < bLen {
		return -1
	}

	if aLen == bLen {
		aFieldPath := a.Attributes()["field_path"].String()
		bFieldPath := b.Attributes()["field_path"].String()

		if aFieldPath < bFieldPath {
			return -1
		}

		if aFieldPath == bFieldPath {
			return 0
		}
	}

	return 1
}
