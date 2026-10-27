package provider

import (
	"context"
	"testing"

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

// streamsSetup holds the connection resource schema plus the stream element
// type, so tests can build realistic plan/state/config values.
type streamsSetup struct {
	schema   schema.Schema
	elemType types.ObjectType
}

func newStreamsSetup(t *testing.T) streamsSetup {
	t.Helper()
	ctx := context.Background()
	var resp resource.SchemaResponse
	(&ConnectionResource{}).Schema(ctx, resource.SchemaRequest{}, &resp)
	require.False(t, resp.Diagnostics.HasError(), "%v", resp.Diagnostics)

	streams := resp.Schema.Attributes["configurations"].(schema.SingleNestedAttribute).
		Attributes["streams"].(schema.SetNestedAttribute)
	return streamsSetup{
		schema:   resp.Schema,
		elemType: streams.NestedObject.Type().(types.ObjectType),
	}
}

// streamValue builds a stream element. Attributes not in overrides are null.
func (s streamsSetup) streamValue(t *testing.T, name string, overrides map[string]attr.Value) attr.Value {
	t.Helper()
	ctx := context.Background()
	attrs := map[string]attr.Value{}
	for k, typ := range s.elemType.AttrTypes {
		v, err := typ.ValueFromTerraform(ctx, tftypes.NewValue(typ.TerraformType(ctx), nil))
		require.NoError(t, err)
		attrs[k] = v
	}
	attrs["name"] = types.StringValue(name)
	for k, v := range overrides {
		attrs[k] = v
	}
	obj, diags := types.ObjectValue(s.elemType.AttrTypes, attrs)
	require.False(t, diags.HasError(), "%v", diags)
	return obj
}

func (s streamsSetup) rawWithStreams(t *testing.T, base tftypes.Value, streams ...attr.Value) tftypes.Value {
	t.Helper()
	ctx := context.Background()
	st := tfsdk.State{Schema: s.schema, Raw: base}
	set, diags := types.SetValue(s.elemType, streams)
	require.False(t, diags.HasError(), "%v", diags)
	diags = st.SetAttribute(ctx, path.Root("configurations").AtName("streams"), set)
	require.False(t, diags.HasError(), "%v", diags)
	return st.Raw
}

func pk(cols ...string) attr.Value {
	inner := make([]attr.Value, len(cols))
	for i, c := range cols {
		inner[i] = types.StringValue(c)
	}
	l, _ := types.ListValue(types.StringType, inner)
	outer, _ := types.ListValue(types.ListType{ElemType: types.StringType}, []attr.Value{l})
	return outer
}

func strList(vals ...string) attr.Value {
	elems := make([]attr.Value, len(vals))
	for i, v := range vals {
		elems[i] = types.StringValue(v)
	}
	l, _ := types.ListValue(types.StringType, elems)
	return l
}

// TestConnectionPlan_NewStreamDoesNotInheritNeighborValues reproduces
// https://github.com/airbytehq/terraform-provider-airbyte/issues/476: adding a
// stream to an existing connection must plan its source-defined computed
// attributes (primary_key, cursor_field, ...) as unknown, not copy them from
// whichever prior-state stream shares its set index.
func TestConnectionPlan_NewStreamDoesNotInheritNeighborValues(t *testing.T) {
	ctx := context.Background()
	s := newStreamsSetup(t)
	tfType := s.schema.Type().TerraformType(ctx)

	base := tftypes.NewValue(tfType, nil)
	baseState := tfsdk.State{Schema: s.schema, Raw: base}
	for k, v := range map[string]string{
		"connection_id":  "11111111-1111-1111-1111-111111111111",
		"name":           "example",
		"source_id":      "22222222-2222-2222-2222-222222222222",
		"destination_id": "33333333-3333-3333-3333-333333333333",
	} {
		require.False(t, baseState.SetAttribute(ctx, path.Root(k), types.StringValue(v)).HasError())
	}
	base = baseState.Raw

	existing := func(name, col string) attr.Value {
		return s.streamValue(t, name, map[string]attr.Value{
			"namespace":     types.StringValue("public"),
			"sync_mode":     types.StringValue("incremental_deduped_history"),
			"primary_key":   pk(col),
			"cursor_field":  strList("_ab_cdc_lsn"),
			"include_files": types.BoolValue(false),
		})
	}
	configured := func(name string) attr.Value {
		return s.streamValue(t, name, map[string]attr.Value{
			"namespace": types.StringValue("public"),
			"sync_mode": types.StringValue("incremental_deduped_history"),
		})
	}

	prior := s.rawWithStreams(t, base,
		existing("table_a", "a_id"), existing("table_b", "b_id"), existing("table_c", "c_id"))
	config := s.rawWithStreams(t, base,
		configured("table_a"), configured("table_new"), configured("table_b"), configured("table_c"))
	// Terraform core proposes prior computed values for set elements that
	// match on their configured attributes, and null for the computed
	// attributes of a brand-new element (the framework then marks those
	// unknown because they are null in config).
	newStream := s.streamValue(t, "table_new", map[string]attr.Value{
		"namespace": types.StringValue("public"),
		"sync_mode": types.StringValue("incremental_deduped_history"),
	})
	proposed := s.rawWithStreams(t, base,
		existing("table_a", "a_id"), newStream, existing("table_b", "b_id"), existing("table_c", "c_id"))

	dv := func(v tftypes.Value) *tfprotov6.DynamicValue {
		d, err := tfprotov6.NewDynamicValue(tfType, v)
		require.NoError(t, err)
		return &d
	}

	server, err := providerserver.NewProtocol6WithError(New("test")())()
	require.NoError(t, err)
	resp, err := server.PlanResourceChange(ctx, &tfprotov6.PlanResourceChangeRequest{
		TypeName:         "airbyte_connection",
		PriorState:       dv(prior),
		ProposedNewState: dv(proposed),
		Config:           dv(config),
	})
	require.NoError(t, err)
	for _, d := range resp.Diagnostics {
		require.NotEqual(t, tfprotov6.DiagnosticSeverityError, d.Severity, "%s: %s", d.Summary, d.Detail)
	}

	planned, err := resp.PlannedState.Unmarshal(tfType)
	require.NoError(t, err)
	plan := tfsdk.Plan{Schema: s.schema, Raw: planned}
	var streams types.Set
	require.False(t, plan.GetAttribute(ctx, path.Root("configurations").AtName("streams"), &streams).HasError())

	got := map[string]map[string]attr.Value{}
	for _, e := range streams.Elements() {
		a := e.(types.Object).Attributes()
		got[a["name"].(types.String).ValueString()] = a
	}
	require.Len(t, got, 4)

	for name, col := range map[string]string{"table_a": "a_id", "table_b": "b_id", "table_c": "c_id"} {
		require.True(t, pk(col).Equal(got[name]["primary_key"]),
			"%s primary_key: got %s", name, got[name]["primary_key"])
	}
	for _, k := range []string{"primary_key", "cursor_field"} {
		require.True(t, got["table_new"][k].IsUnknown(),
			"table_new %s must be unknown (known after apply), got %s", k, got["table_new"][k])
	}
}

// planStreams runs PlanResourceChange for a connection whose prior state,
// proposed new state and config differ only in configurations.streams, and
// returns the planned streams keyed by name.
func (s streamsSetup) planStreams(t *testing.T, prior, proposed, config []attr.Value) map[string]map[string]attr.Value {
	t.Helper()
	ctx := context.Background()
	tfType := s.schema.Type().TerraformType(ctx)

	baseState := tfsdk.State{Schema: s.schema, Raw: tftypes.NewValue(tfType, nil)}
	for k, v := range map[string]string{
		"connection_id":  "11111111-1111-1111-1111-111111111111",
		"name":           "example",
		"source_id":      "22222222-2222-2222-2222-222222222222",
		"destination_id": "33333333-3333-3333-3333-333333333333",
	} {
		require.False(t, baseState.SetAttribute(ctx, path.Root(k), types.StringValue(v)).HasError())
	}
	dv := func(streams []attr.Value) *tfprotov6.DynamicValue {
		d, err := tfprotov6.NewDynamicValue(tfType, s.rawWithStreams(t, baseState.Raw, streams...))
		require.NoError(t, err)
		return &d
	}

	server, err := providerserver.NewProtocol6WithError(New("test")())()
	require.NoError(t, err)
	resp, err := server.PlanResourceChange(ctx, &tfprotov6.PlanResourceChangeRequest{
		TypeName:         "airbyte_connection",
		PriorState:       dv(prior),
		ProposedNewState: dv(proposed),
		Config:           dv(config),
	})
	require.NoError(t, err)
	for _, d := range resp.Diagnostics {
		require.NotEqual(t, tfprotov6.DiagnosticSeverityError, d.Severity, "%s: %s", d.Summary, d.Detail)
	}

	planned, err := resp.PlannedState.Unmarshal(tfType)
	require.NoError(t, err)
	var streams types.Set
	plan := tfsdk.Plan{Schema: s.schema, Raw: planned}
	require.False(t, plan.GetAttribute(ctx, path.Root("configurations").AtName("streams"), &streams).HasError())
	got := map[string]map[string]attr.Value{}
	for _, e := range streams.Elements() {
		a := e.(types.Object).Attributes()
		got[a["name"].(types.String).ValueString()] = a
	}
	return got
}

// TestConnectionPlan_UnchangedStreamsWithOmittedNamespace checks that a no-op
// plan keeps every computed stream value from state when the config leaves
// namespace (and everything else computed) unset.
func TestConnectionPlan_UnchangedStreamsWithOmittedNamespace(t *testing.T) {
	s := newStreamsSetup(t)
	inState := func(name, col string) attr.Value {
		return s.streamValue(t, name, map[string]attr.Value{
			"namespace":     types.StringValue("public"),
			"sync_mode":     types.StringValue("incremental_deduped_history"),
			"primary_key":   pk(col),
			"cursor_field":  strList("_ab_cdc_lsn"),
			"include_files": types.BoolValue(false),
		})
	}
	// Config sets only the name; Terraform core proposes the prior values
	// because the set elements match on their configured attributes.
	cfg := func(name string) attr.Value { return s.streamValue(t, name, nil) }

	prior := []attr.Value{inState("table_a", "a_id"), inState("table_b", "b_id")}
	got := s.planStreams(t, prior, prior, []attr.Value{cfg("table_a"), cfg("table_b")})

	require.Len(t, got, 2)
	for name, col := range map[string]string{"table_a": "a_id", "table_b": "b_id"} {
		require.True(t, pk(col).Equal(got[name]["primary_key"]), "%s primary_key: %s", name, got[name]["primary_key"])
		require.Equal(t, types.StringValue("public"), got[name]["namespace"], "%s namespace", name)
	}
}

// TestConnectionPlan_NewStreamWithOmittedNamespace adds a stream to a
// connection whose config omits namespace everywhere: existing streams keep
// their state values, and the new stream's computed values are unknown.
func TestConnectionPlan_NewStreamWithOmittedNamespace(t *testing.T) {
	s := newStreamsSetup(t)
	inState := func(name, col string) attr.Value {
		return s.streamValue(t, name, map[string]attr.Value{
			"namespace":     types.StringValue("public"),
			"sync_mode":     types.StringValue("incremental_deduped_history"),
			"primary_key":   pk(col),
			"cursor_field":  strList("_ab_cdc_lsn"),
			"include_files": types.BoolValue(false),
		})
	}
	cfg := func(name string) attr.Value { return s.streamValue(t, name, nil) }

	prior := []attr.Value{inState("table_a", "a_id"), inState("table_b", "b_id")}
	proposed := []attr.Value{inState("table_a", "a_id"), s.streamValue(t, "table_new", nil), inState("table_b", "b_id")}
	got := s.planStreams(t, prior, proposed, []attr.Value{cfg("table_a"), cfg("table_new"), cfg("table_b")})

	require.Len(t, got, 3)
	for name, col := range map[string]string{"table_a": "a_id", "table_b": "b_id"} {
		require.True(t, pk(col).Equal(got[name]["primary_key"]), "%s primary_key: %s", name, got[name]["primary_key"])
	}
	for _, k := range []string{"primary_key", "cursor_field", "sync_mode", "namespace"} {
		require.True(t, got["table_new"][k].IsUnknown(), "table_new %s must be unknown, got %s", k, got["table_new"][k])
	}
}
