package objectplanmodifier

import (
	"context"

	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
)

var _ planmodifier.Object = ObjectStreamConfigurationModifierPlanModifier{}

type ObjectStreamConfigurationModifierPlanModifier struct{}

// Description describes the plan modification in plain text formatting.
func (v ObjectStreamConfigurationModifierPlanModifier) Description(_ context.Context) string {
	return "TODO: add plan modifier description"
}

// MarkdownDescription describes the plan modification in Markdown formatting.
func (v ObjectStreamConfigurationModifierPlanModifier) MarkdownDescription(ctx context.Context) string {
	return v.Description(ctx)
}

// Validate performs the plan modification.
func (v ObjectStreamConfigurationModifierPlanModifier) PlanModifyObject(ctx context.Context, req planmodifier.ObjectRequest, resp *planmodifier.ObjectResponse) {
	resp.Diagnostics.AddAttributeError(
		req.Path,
		"TODO: implement plan modifier StreamConfigurationModifier logic",
		req.Path.String()+": "+v.Description(ctx),
	)
}

func StreamConfigurationModifier() planmodifier.Object {
	return ObjectStreamConfigurationModifierPlanModifier{}
}
