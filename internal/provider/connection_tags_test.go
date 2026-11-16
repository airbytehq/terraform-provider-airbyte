package provider

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"

	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/providerserver"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/tfsdk"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-go/tfprotov6"
	"github.com/hashicorp/terraform-plugin-go/tftypes"
	"github.com/stretchr/testify/require"
)

func tagsWithIDs(ids ...string) []tfTypes.Tag {
	var tags []tfTypes.Tag
	for _, id := range ids {
		tags = append(tags, tfTypes.Tag{TagID: types.StringValue(id), Name: types.StringValue("updated-" + id)})
	}
	return tags
}

func TestPreserveConnectionTagOrder(t *testing.T) {
	for _, tc := range []struct {
		name             string
		api, prior, want []tfTypes.Tag
	}{
		{"reordered", tagsWithIDs("b", "a"), tagsWithIDs("a", "b"), tagsWithIDs("a", "b")},
		{"added", tagsWithIDs("c", "b", "d", "a"), tagsWithIDs("a", "b"), tagsWithIDs("a", "b", "c", "d")},
		{"removed", tagsWithIDs("b"), tagsWithIDs("a", "b"), tagsWithIDs("b")},
		{"nil prior", tagsWithIDs("b", "a"), nil, tagsWithIDs("b", "a")},
		{"empty prior", tagsWithIDs("b", "a"), []tfTypes.Tag{}, tagsWithIDs("b", "a")},
		{"empty api", nil, tagsWithIDs("a"), nil},
		{"duplicates", tagsWithIDs("b", "a", "a"), tagsWithIDs("a", "a", "b", "b"), tagsWithIDs("a", "a", "b")},
		{"unknown prior", tagsWithIDs("b", "a"), []tfTypes.Tag{{TagID: types.StringUnknown()}}, tagsWithIDs("b", "a")},
		{"null prior", tagsWithIDs("b", "a"), []tfTypes.Tag{{TagID: types.StringNull()}}, tagsWithIDs("b", "a")},
	} {
		t.Run(tc.name, func(t *testing.T) {
			require.Equal(t, tc.want, preserveConnectionTagOrder(tc.api, tc.prior))
		})
	}
}

func TestConnectionTagsRefreshPlan(t *testing.T) {
	ctx := context.Background()
	api := shared.ConnectionResponse{
		ConnectionID: "11111111-1111-1111-1111-111111111111", Name: "example",
		SourceID: "22222222-2222-2222-2222-222222222222", DestinationID: "33333333-3333-3333-3333-333333333333",
		WorkspaceID: "44444444-4444-4444-4444-444444444444", Status: "active",
		Schedule: shared.ConnectionScheduleResponse{ScheduleType: "manual"},
		Tags:     []shared.Tag{{TagID: "b", Name: "B", Color: "blue", WorkspaceID: "w"}, {TagID: "a", Name: "A", Color: "red", WorkspaceID: "w"}},
	}
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "application/json")
		require.NoError(t, json.NewEncoder(w).Encode(api))
	}))
	defer server.Close()
	r := &ConnectionResource{client: sdk.New(sdk.WithServerURL(server.URL))}
	var schemaResp resource.SchemaResponse
	r.Schema(ctx, resource.SchemaRequest{}, &schemaResp)
	model := &ConnectionResourceModel{}
	require.False(t, model.RefreshFromSharedConnectionResponse(ctx, &api).HasError())
	state := tfsdk.State{Schema: schemaResp.Schema, Raw: tftypes.NewValue(schemaResp.Schema.Type().TerraformType(ctx), nil)}
	require.False(t, state.Set(ctx, model).HasError())
	var apiTags types.List
	require.False(t, state.GetAttribute(ctx, path.Root("tags"), &apiTags).HasError())
	model.Tags[0], model.Tags[1] = model.Tags[1], model.Tags[0]
	require.False(t, state.Set(ctx, model).HasError())
	var configTags types.List
	require.False(t, state.GetAttribute(ctx, path.Root("tags"), &configTags).HasError())
	require.False(t, apiTags.Equal(configTags), "main refresh order produces a non-empty tag plan")
	read := resource.ReadResponse{State: state}
	r.Read(ctx, resource.ReadRequest{State: state}, &read)
	require.False(t, read.Diagnostics.HasError(), "%v", read.Diagnostics)
	tfType := schemaResp.Schema.Type().TerraformType(ctx)
	dv := func(raw tftypes.Value) *tfprotov6.DynamicValue {
		value, err := tfprotov6.NewDynamicValue(tfType, raw)
		require.NoError(t, err)
		return &value
	}
	protocol, err := providerserver.NewProtocol6WithError(New("test")())()
	require.NoError(t, err)
	plan, err := protocol.PlanResourceChange(ctx, &tfprotov6.PlanResourceChangeRequest{
		TypeName: "airbyte_connection", PriorState: dv(read.State.Raw), ProposedNewState: dv(state.Raw), Config: dv(state.Raw),
	})
	require.NoError(t, err)
	for _, diagnostic := range plan.Diagnostics {
		require.NotEqual(t, tfprotov6.DiagnosticSeverityError, diagnostic.Severity, "%s: %s", diagnostic.Summary, diagnostic.Detail)
	}
	planned, err := plan.PlannedState.Unmarshal(tfType)
	require.NoError(t, err)
	var plannedTags, refreshedTags types.List
	require.False(t, (&tfsdk.Plan{Schema: schemaResp.Schema, Raw: planned}).GetAttribute(ctx, path.Root("tags"), &plannedTags).HasError())
	require.False(t, read.State.GetAttribute(ctx, path.Root("tags"), &refreshedTags).HasError())
	require.True(t, plannedTags.Equal(refreshedTags), "tag plan must be empty after refresh: planned %s, state %s", plannedTags, refreshedTags)
}
