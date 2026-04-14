package setplanmodifier

import (
	"context"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// ---------------------------------------------------------------------------
// Helpers — hide Terraform type construction so test cases stay readable
// ---------------------------------------------------------------------------

// streamAttrTypes is the attribute type map for a single stream object.
// Mirrors the real schema: name, namespace, sync_mode are strings;
// cursor_field is a list of strings; primary_key is a list of list of strings.
var streamAttrTypes = map[string]attr.Type{
	"name":         types.StringType,
	"namespace":    types.StringType,
	"sync_mode":    types.StringType,
	"cursor_field": types.ListType{ElemType: types.StringType},
	"primary_key":  types.ListType{ElemType: types.ListType{ElemType: types.StringType}},
}

var streamObjType = types.ObjectType{AttrTypes: streamAttrTypes}

// stream builds an ObjectValue representing one stream element.
// cursor_field defaults to null when nil is passed (simulating a source-defined
// computed value that the user didn't specify in HCL).
func stream(name, namespace, syncMode string, cursorField []string) basetypes.ObjectValue {
	attrs := map[string]attr.Value{
		"name":      types.StringValue(name),
		"namespace": types.StringValue(namespace),
		"sync_mode": types.StringValue(syncMode),
	}
	if cursorField != nil {
		elems := make([]attr.Value, len(cursorField))
		for i, f := range cursorField {
			elems[i] = types.StringValue(f)
		}
		v, _ := types.ListValue(types.StringType, elems)
		attrs["cursor_field"] = v
	} else {
		attrs["cursor_field"] = types.ListNull(types.StringType)
	}
	attrs["primary_key"] = types.ListNull(types.ListType{ElemType: types.StringType})

	obj, _ := types.ObjectValue(streamAttrTypes, attrs)
	return obj
}

// streamWithUnknownCursor builds a stream where cursor_field is Unknown,
// simulating Terraform's initial plan before any inner modifier runs.
func streamWithUnknownCursor(name, namespace, syncMode string) basetypes.ObjectValue {
	attrs := map[string]attr.Value{
		"name":         types.StringValue(name),
		"namespace":    types.StringValue(namespace),
		"sync_mode":    types.StringValue(syncMode),
		"cursor_field": types.ListUnknown(types.StringType),
		"primary_key":  types.ListNull(types.ListType{ElemType: types.StringType}),
	}
	obj, _ := types.ObjectValue(streamAttrTypes, attrs)
	return obj
}

// streamWithNullName builds a stream where the name attribute is null.
func streamWithNullName(namespace, syncMode string) basetypes.ObjectValue {
	attrs := map[string]attr.Value{
		"name":         types.StringNull(),
		"namespace":    types.StringValue(namespace),
		"sync_mode":    types.StringValue(syncMode),
		"cursor_field": types.ListNull(types.StringType),
		"primary_key":  types.ListNull(types.ListType{ElemType: types.StringType}),
	}
	obj, _ := types.ObjectValue(streamAttrTypes, attrs)
	return obj
}

// setOf builds a SetValue from stream ObjectValues.
func setOf(elems ...basetypes.ObjectValue) basetypes.SetValue {
	vals := make([]attr.Value, len(elems))
	for i, e := range elems {
		vals[i] = e
	}
	s, _ := types.SetValue(streamObjType, vals)
	return s
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

func TestUniqueByNameAndNamespace_PlanModifySet(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name        string // human-readable scenario description
		state       basetypes.SetValue
		plan        basetypes.SetValue
		config      basetypes.SetValue
		expectPlan  basetypes.SetValue
		expectError bool
	}{
		{
			// Scenario: streams declared in a different order than the API returns.
			// The modifier should match by (name, namespace) and carry over
			// cursor_field from state, regardless of element ordering.
			name: "reordered streams — computed fields follow the correct stream",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				stream("orders", "public", "incremental", []string{"created_at"}),
			),
			plan: setOf(
				stream("orders", "public", "incremental", nil),
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("orders", "public", "incremental", nil),
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("orders", "public", "incremental", []string{"created_at"}),
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
		},
		{
			// Scenario: user adds a brand-new stream not present in state.
			// The modifier should pass it through without error.
			name: "new stream added — passes through unmodified",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
				stream("events", "analytics", "full_refresh", nil),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
				stream("events", "analytics", "full_refresh", nil),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				stream("events", "analytics", "full_refresh", nil),
			),
		},
		{
			// Scenario: user removes a stream from their config.
			// The modifier should not error; the removed stream is simply absent.
			name: "stream removed — no error, plan has fewer elements",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				stream("orders", "public", "incremental", []string{"created_at"}),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
		},
		{
			// Scenario: user explicitly sets cursor_field in their HCL config.
			// The modifier should respect user intent and NOT overwrite with state.
			name: "user-specified cursor_field — preserved over state value",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
			plan: setOf(
				stream("users", "public", "incremental", []string{"created_at"}),
			),
			config: setOf(
				stream("users", "public", "incremental", []string{"created_at"}),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"created_at"}),
			),
		},
		{
			// Scenario: two streams in state share the same (name, namespace).
			// This is invalid and should produce a diagnostic error.
			name: "duplicate composite key in state — returns diagnostic error",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				stream("users", "public", "full_refresh", nil),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
			),
			expectError: true,
		},
		{
			// Scenario: resource is being created for the first time (state is null).
			// The modifier should be a complete no-op.
			name: "resource creation — state is null, no-op",
			state: types.SetNull(streamObjType),
			plan: setOf(
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", nil),
			),
		},
		{
			// Scenario: plan is entirely unknown (e.g. depends_on forces
			// re-evaluation). The modifier should propagate state as-is,
			// matching the behavior of SuppressDiff.
			name: "unknown plan — propagates state (SuppressDiff behavior)",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
			plan:   types.SetUnknown(streamObjType),
			config: setOf(
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
		},
		{
			// Scenario: inner SuppressDiff has already converted unknown→null
			// on cursor_field (because set hash didn't match). The modifier
			// should still merge from state since the config value is also null
			// (user didn't specify cursor_field).
			name: "null from SuppressDiff — merges from state when config is null",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
		},
		{
			// Scenario: stream has a null name attribute. The modifier can't
			// form a reliable composite key, so it should skip correlation
			// and pass the element through unmodified.
			name: "null name — skipped from correlation, passes through",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				streamWithNullName("public", "full_refresh"),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
				streamWithNullName("public", "full_refresh"),
			),
			config: setOf(
				stream("users", "public", "incremental", nil),
				streamWithNullName("public", "full_refresh"),
			),
			expectPlan: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				streamWithNullName("public", "full_refresh"),
			),
		},
		{
			// Scenario: streams have the same name but different namespaces.
			// The composite key (name, namespace) should distinguish them.
			name: "same name different namespace — treated as distinct streams",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
				stream("users", "analytics", "incremental", []string{"created_at"}),
			),
			plan: setOf(
				stream("users", "analytics", "incremental", nil),
				stream("users", "public", "incremental", nil),
			),
			config: setOf(
				stream("users", "analytics", "incremental", nil),
				stream("users", "public", "incremental", nil),
			),
			expectPlan: setOf(
				stream("users", "analytics", "incremental", []string{"created_at"}),
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
		},
		{
			// Scenario: config is null (e.g. the attribute isn't specified at all
			// in the resource block). The modifier should not interfere.
			name: "null config — no-op, does not interfere",
			state: setOf(
				stream("users", "public", "incremental", []string{"updated_at"}),
			),
			plan: setOf(
				stream("users", "public", "incremental", nil),
			),
			config: types.SetNull(streamObjType),
			expectPlan: setOf(
				stream("users", "public", "incremental", nil),
			),
		},
		{
			// Scenario: both plan and state are empty sets.
			// The modifier should produce an empty set without error.
			name: "empty sets — no-op, produces empty set",
			state:      setOf(),
			plan:       setOf(),
			config:     setOf(),
			expectPlan: setOf(),
		},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()

			modifier := UniqueByNameAndNamespace()
			req := planmodifier.SetRequest{
				StateValue:  tc.state,
				PlanValue:   tc.plan,
				ConfigValue: tc.config,
			}
			resp := &planmodifier.SetResponse{
				PlanValue: tc.plan,
			}

			modifier.PlanModifySet(context.Background(), req, resp)

			if tc.expectError {
				assert.True(t, resp.Diagnostics.HasError(),
					"expected a diagnostic error but got none")
				return
			}

			require.False(t, resp.Diagnostics.HasError(),
				"unexpected error: %s", resp.Diagnostics.Errors())

			// Compare the resulting plan elements against expectations.
			assert.ElementsMatch(t, tc.expectPlan.Elements(), resp.PlanValue.Elements(),
				"plan elements after modifier don't match expected")
		})
	}
}

func TestUniqueByNameAndNamespace_Description(t *testing.T) {
	t.Parallel()
	modifier := UniqueByNameAndNamespace()

	desc := modifier.Description(context.Background())
	assert.Contains(t, desc, "name")
	assert.Contains(t, desc, "namespace")
	assert.Contains(t, desc, "composite key")

	md := modifier.MarkdownDescription(context.Background())
	assert.Contains(t, md, "`name`")
	assert.Contains(t, md, "`namespace`")
}
