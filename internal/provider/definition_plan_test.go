package provider

import (
	"context"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework-jsontypes/jsontypes"
	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/providerserver"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/tfsdk"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-go/tfprotov6"
	"github.com/hashicorp/terraform-plugin-go/tftypes"
	"github.com/stretchr/testify/require"
)

func definitionPlanValue(t *testing.T, s schema.Schema, values map[string]attr.Value) tftypes.Value {
	t.Helper()
	ctx := context.Background()
	state := tfsdk.State{Schema: s, Raw: tftypes.NewValue(s.Type().TerraformType(ctx), nil)}
	for name, value := range values {
		require.False(t, state.SetAttribute(ctx, path.Root(name), value).HasError(), name)
	}
	return state.Raw
}

func planDefinitionResource(t *testing.T, r resource.Resource, typeName string, prior, proposed, config tftypes.Value) (tfsdk.Plan, []*tftypes.AttributePath) {
	t.Helper()
	ctx := context.Background()
	var sr resource.SchemaResponse
	r.Schema(ctx, resource.SchemaRequest{}, &sr)
	tfType := sr.Schema.Type().TerraformType(ctx)
	dv := func(v tftypes.Value) *tfprotov6.DynamicValue {
		d, err := tfprotov6.NewDynamicValue(tfType, v)
		require.NoError(t, err)
		return &d
	}
	server, err := providerserver.NewProtocol6WithError(New("test")())()
	require.NoError(t, err)
	resp, err := server.PlanResourceChange(ctx, &tfprotov6.PlanResourceChangeRequest{
		TypeName: typeName, PriorState: dv(prior), ProposedNewState: dv(proposed), Config: dv(config),
	})
	require.NoError(t, err)
	for _, d := range resp.Diagnostics {
		require.NotEqual(t, tfprotov6.DiagnosticSeverityError, d.Severity, "%s: %s", d.Summary, d.Detail)
	}
	planned, err := resp.PlannedState.Unmarshal(tfType)
	require.NoError(t, err)
	return tfsdk.Plan{Schema: sr.Schema, Raw: planned}, resp.RequiresReplace
}

func TestDefinitionPlan(t *testing.T) {
	ctx := context.Background()
	for _, kind := range []string{"source", "destination"} {
		t.Run(kind, func(t *testing.T) {
			var definition, dependent resource.Resource = &SourceDefinitionResource{}, &SourceResource{}
			if kind == "destination" {
				definition, dependent = &DestinationDefinitionResource{}, &DestinationResource{}
			}
			var sr resource.SchemaResponse
			definition.Schema(ctx, resource.SchemaRequest{}, &sr)
			typeName := "airbyte_" + kind + "_definition"
			id := types.StringValue("11111111-1111-1111-1111-111111111111")
			values := func(tag string, definitionID types.String) map[string]attr.Value {
				return map[string]attr.Value{
					"docker_image_tag": types.StringValue(tag), "docker_repository": types.StringValue("airbyte/example"),
					"name": types.StringValue("example"), "workspace_id": types.StringValue("22222222-2222-2222-2222-222222222222"),
					"id": definitionID,
				}
			}
			prior := definitionPlanValue(t, sr.Schema, values("1.0.0", id))
			for _, tc := range []struct {
				name string
				tag  string
			}{
				{"unchanged", "1.0.0"}, {"image_tag_update", "1.0.1"},
			} {
				t.Run(tc.name, func(t *testing.T) {
					config := definitionPlanValue(t, sr.Schema, values(tc.tag, types.StringNull()))
					proposed := definitionPlanValue(t, sr.Schema, values(tc.tag, id))
					plan, replacements := planDefinitionResource(t, definition, typeName, prior, proposed, config)
					var plannedID, tag types.String
					require.False(t, plan.GetAttribute(ctx, path.Root("id"), &plannedID).HasError())
					require.False(t, plan.GetAttribute(ctx, path.Root("docker_image_tag"), &tag).HasError())
					t.Logf("planned id=%s docker_image_tag=%s", plannedID, tag)
					require.Equal(t, id, plannedID)
					require.Equal(t, types.StringValue(tc.tag), tag)
					require.Empty(t, replacements)

					var ds resource.SchemaResponse
					dependent.Schema(ctx, resource.SchemaRequest{}, &ds)
					dependentValues := map[string]attr.Value{
						"name": types.StringValue("example"), "workspace_id": values(tc.tag, id)["workspace_id"],
						"definition_id": id, "configuration": jsontypes.NewNormalizedValue(`{}`),
						kind + "_id": types.StringValue("33333333-3333-3333-3333-333333333333"),
					}
					dependentPrior := definitionPlanValue(t, ds.Schema, dependentValues)
					dependentValues["definition_id"] = plannedID
					dependentProposed := definitionPlanValue(t, ds.Schema, dependentValues)
					delete(dependentValues, kind+"_id")
					dependentConfig := definitionPlanValue(t, ds.Schema, dependentValues)
					_, replacements = planDefinitionResource(t, dependent, "airbyte_"+kind, dependentPrior, dependentProposed, dependentConfig)
					require.Empty(t, replacements, "definition id must not force dependent replacement")
				})
			}
			t.Run("create", func(t *testing.T) {
				config := definitionPlanValue(t, sr.Schema, values("1.0.0", types.StringNull()))
				plan, replacements := planDefinitionResource(t, definition, typeName,
					tftypes.NewValue(sr.Schema.Type().TerraformType(ctx), nil), config, config)
				var plannedID types.String
				require.False(t, plan.GetAttribute(ctx, path.Root("id"), &plannedID).HasError())
				require.True(t, plannedID.IsUnknown(), "new definition id must stay unknown: %s", plannedID)
				require.Empty(t, replacements)
			})
			t.Run("repository_change", func(t *testing.T) {
				configValues := values("1.0.0", types.StringNull())
				configValues["docker_repository"] = types.StringValue("airbyte/different")
				config := definitionPlanValue(t, sr.Schema, configValues)
				configValues["id"] = id
				proposed := definitionPlanValue(t, sr.Schema, configValues)
				_, replacements := planDefinitionResource(t, definition, typeName, prior, proposed, config)
				require.Contains(t, replacements, tftypes.NewAttributePath().WithAttributeName("docker_repository"))
			})
		})
	}
}
