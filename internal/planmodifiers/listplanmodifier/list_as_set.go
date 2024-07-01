package listplanmodifier

import (
	"context"

	"github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/utils"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func ListToSet(key string) planmodifier.List {
	return listToSet{key: key}
}

// listToSet implements the plan modifier.
type listToSet struct {
	key string
}

// Description returns a human-readable description of the plan modifier.
func (m listToSet) Description(_ context.Context) string {
	return "Treat the elements of the list as a set, using the provided `key`."
}

// MarkdownDescription returns a markdown description of the plan modifier.
func (m listToSet) MarkdownDescription(_ context.Context) string {
	return "Treat the elements of the list as a set, using the provided `key`."
}

// PlanModifyList implements the plan modification logic.
func (m listToSet) PlanModifyList(ctx context.Context, req planmodifier.ListRequest, resp *planmodifier.ListResponse) {
	// Do nothing if there is an unknown configuration value
	if req.ConfigValue.IsUnknown() {
		return
	}

	if utils.IsAllStateUnknown(ctx, req.State) {
		return
	}

	var oldList types.List
	diags := req.State.GetAttribute(ctx, req.Path, &oldList)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	var newList types.List
	diags = req.Plan.GetAttribute(ctx, req.Path, &newList)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	oldItemKeys := make([]string, len(oldList.Elements()))
	oldItemsByKey := make(map[string]types.Object)

	newItemKeys := make([]string, len(newList.Elements()))
	newItemsByKey := make(map[string]types.Object)

	var obj types.Object
	for i := 0; i < len(oldList.Elements()); i++ {
		diags := req.State.GetAttribute(ctx, req.Path.AtListIndex(i), &obj)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}

		v, ok := obj.Attributes()[m.key]
		if ok {
			oldItemsByKey[v.String()] = obj
			oldItemKeys[i] = v.String()
		}
	}

	for j := 0; j < len(newList.Elements()); j++ {
		diags := req.Plan.GetAttribute(ctx, req.Path.AtListIndex(j), &obj)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}

		v, ok := obj.Attributes()[m.key]
		if ok {
			newItemsByKey[v.String()] = obj
			newItemKeys[j] = v.String()
		}
	}

	// IF the new and old lengths are the same, do nothing
	if len(oldList.Elements()) == len(newList.Elements()) {
		return
	}

	// IF the new and old lengths are different...
	//   and the new list is smaller, do nothing
	//   and the new list is larger, check to see if it was re-ordered

	// TODO: work out the cases here, I don't believe this is strictly a NOOP in all cases
	if len(newList.Elements()) < len(oldList.Elements()) {
		return
	}

	if len(newList.Elements()) > len(oldList.Elements()) {
		var elements []types.Object

		// Look to see if the elements were reshuffled, if so, adjust the plan accordingly
		for _, key := range oldItemKeys {
			if new, ok := newItemsByKey[key]; ok {
				elements = append(elements, new)
			}
		}

		for _, key := range newItemKeys {
			if _, ok := oldItemsByKey[key]; !ok {
				elements = append(elements, newItemsByKey[key])
			}
		}

		newPlanValue, diags := types.ListValueFrom(ctx, resp.PlanValue.ElementType(ctx), elements)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}

		resp.PlanValue = newPlanValue
	}
}
