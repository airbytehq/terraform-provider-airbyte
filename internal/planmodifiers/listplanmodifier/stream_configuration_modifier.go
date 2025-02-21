package listplanmodifier

import (
	"cmp"
	"context"
	"slices"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

var _ planmodifier.List = ListStreamConfigurationModifierPlanModifier{}

type ListStreamConfigurationModifierPlanModifier struct{}

// Description describes the plan modification in plain text formatting.
func (v ListStreamConfigurationModifierPlanModifier) Description(_ context.Context) string {
	return "Sort stream configs by name to match the TF state."
}

// MarkdownDescription describes the plan modification in Markdown formatting.
func (v ListStreamConfigurationModifierPlanModifier) MarkdownDescription(ctx context.Context) string {
	return v.Description(ctx)
}

// Validate performs the plan modification.
func (v ListStreamConfigurationModifierPlanModifier) PlanModifyList(ctx context.Context, req planmodifier.ListRequest, resp *planmodifier.ListResponse) {

	// Do nothing if there is a no planned value.
	if req.PlanValue.IsUnknown() {
		return
	}

	// Do nothing if there is no state value.
	if req.StateValue.IsNull() {
		return
	}

	planElems := req.PlanValue.Elements()
	stateElems := req.StateValue.Elements()

	getName := func(v attr.Value) string {
		if el, ok := v.(types.Object); ok {
			if name, ok := el.Attributes()["name"]; ok {
				return name.String()				
			}
		}
		return ""
	}

	// Build a mapping from stream name to index in the TF state.
	stateIndex := map[string]int{}
	for i := 0; i < len(stateElems); i++ {
		stateIndex[getName(stateElems[i])] = i
	}

	// Sort the plan to match the state. If a stream doesn't exist in the state,
	// it gets pushed to the end.
	slices.SortStableFunc(planElems, func(a, b attr.Value) int {
		aIdx, aOk := stateIndex[getName(a)]
		bIdx, bOk := stateIndex[getName(b)]
		if aOk && bOk {
			return cmp.Compare(aIdx, bIdx)
		}
		if aOk && !bOk {
			return -1
		}
		if !aOk && bOk {
			return 1
		}		
		return 0
	})

	newPlanValue, diags := types.ListValueFrom(ctx, resp.PlanValue.ElementType(ctx), planElems)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.PlanValue = newPlanValue
}

func StreamConfigurationModifier() planmodifier.List {
	return ListStreamConfigurationModifierPlanModifier{}
}
