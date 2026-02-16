package stringplanmodifier

import (
	"context"

	"github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/utils"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
)

func UseStateForUnknown() planmodifier.String {
	return useStateForUnknown{}
}

type useStateForUnknown struct{}

func (m useStateForUnknown) Description(_ context.Context) string {
	return "Preserves the prior state value when the planned value is unknown."
}

func (m useStateForUnknown) MarkdownDescription(_ context.Context) string {
	return "Preserves the prior state value when the planned value is unknown."
}

func (m useStateForUnknown) PlanModifyString(ctx context.Context, req planmodifier.StringRequest, resp *planmodifier.StringResponse) {
	if !req.PlanValue.IsUnknown() {
		return
	}

	if req.ConfigValue.IsUnknown() {
		return
	}

	if utils.IsAllStateUnknown(ctx, req.State) {
		return
	}

	resp.PlanValue = req.StateValue
}
