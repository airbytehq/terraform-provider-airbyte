package stringplanmodifier

import (
	"context"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/tfsdk"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-go/tftypes"
	"github.com/stretchr/testify/require"
)

func stringState(value tftypes.Value) tfsdk.State {
	return tfsdk.State{
		Raw: value,
		Schema: schema.Schema{
			Attributes: map[string]schema.Attribute{
				"id": schema.StringAttribute{Computed: true},
			},
		},
	}
}

func TestUseStateForUnknownPlanModifyString(t *testing.T) {
	t.Parallel()

	objectType := tftypes.Object{AttributeTypes: map[string]tftypes.Type{"id": tftypes.String}}

	tests := map[string]struct {
		state       tfsdk.State
		stateValue  types.String
		planValue   types.String
		configValue types.String
		expected    types.String
	}{
		"update adopts prior state": {
			state: stringState(tftypes.NewValue(objectType, map[string]tftypes.Value{
				"id": tftypes.NewValue(tftypes.String, "definition-id"),
			})),
			stateValue:  types.StringValue("definition-id"),
			planValue:   types.StringUnknown(),
			configValue: types.StringNull(),
			expected:    types.StringValue("definition-id"),
		},
		"create leaves unknown plan unchanged": {
			state:       stringState(tftypes.NewValue(objectType, nil)),
			stateValue:  types.StringNull(),
			planValue:   types.StringUnknown(),
			configValue: types.StringNull(),
			expected:    types.StringUnknown(),
		},
		"known plan value is unchanged": {
			state: stringState(tftypes.NewValue(objectType, map[string]tftypes.Value{
				"id": tftypes.NewValue(tftypes.String, "prior-id"),
			})),
			stateValue:  types.StringValue("prior-id"),
			planValue:   types.StringValue("new-id"),
			configValue: types.StringNull(),
			expected:    types.StringValue("new-id"),
		},
	}

	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			request := planmodifier.StringRequest{
				State:       test.state,
				StateValue:  test.stateValue,
				PlanValue:   test.planValue,
				ConfigValue: test.configValue,
			}
			response := &planmodifier.StringResponse{PlanValue: test.planValue}

			UseStateForUnknown().PlanModifyString(context.Background(), request, response)

			require.Equal(t, test.expected, response.PlanValue)
		})
	}
}
