package provider

import (
	"context"
	"testing"

	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// boolPtr is a test helper that returns a pointer to a bool.
func boolPtr(v bool) *bool { return &v }

// stringPtr is a test helper that returns a pointer to a string.
func stringPtr(v string) *string { return &v }

func TestWorkspaceResource_RefreshFromSharedWorkspaceResponse_NotificationsNilDeref(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name string
		resp *shared.WorkspaceResponse
	}{
		{
			// Scenario: all notification sub-types are nil.
			// This is the simplest case — only the top-level pointer matters.
			name: "all notification sub-types nil — no panic",
			resp: &shared.WorkspaceResponse{
				WorkspaceID:   "ws-001",
				Name:          "test-workspace",
				DataResidency: "auto",
				Notifications: shared.NotificationsConfig{},
			},
		},
		{
			// Scenario: all notification sub-types are non-nil with Email enabled.
			// Before the fix, this would SIGSEGV on the first sub-type's else branch.
			name: "all sub-types with email enabled — no panic",
			resp: &shared.WorkspaceResponse{
				WorkspaceID:   "ws-002",
				Name:          "full-notifications",
				DataResidency: "us",
				Notifications: shared.NotificationsConfig{
					ConnectionUpdate:               &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)}},
					ConnectionUpdateActionRequired: &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)}},
					Failure:                        &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(false)}},
					Success:                        &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)}},
					SyncDisabled:                   &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)}},
					SyncDisabledWarning:            &shared.NotificationConfig{Email: &shared.EmailNotificationConfig{Enabled: boolPtr(false)}},
				},
			},
		},
		{
			// Scenario: all sub-types have both email and webhook configured.
			// Tests the deepest level of pointer initialization.
			name: "all sub-types with email and webhook — no panic",
			resp: &shared.WorkspaceResponse{
				WorkspaceID:   "ws-003",
				Name:          "full-email-webhook",
				DataResidency: "eu",
				Notifications: shared.NotificationsConfig{
					ConnectionUpdate: &shared.NotificationConfig{
						Email:   &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(true), URL: stringPtr("https://example.com/hook")},
					},
					Failure: &shared.NotificationConfig{
						Email:   &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(false), URL: stringPtr("https://example.com/fail")},
					},
					Success: &shared.NotificationConfig{
						Email:   &shared.EmailNotificationConfig{Enabled: boolPtr(false)},
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(true), URL: stringPtr("https://example.com/success")},
					},
					SyncDisabled: &shared.NotificationConfig{
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(true), URL: stringPtr("https://example.com/disabled")},
					},
					SyncDisabledWarning: &shared.NotificationConfig{
						Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
					},
					ConnectionUpdateActionRequired: &shared.NotificationConfig{
						Email:   &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(true), URL: stringPtr("https://example.com/action")},
					},
				},
			},
		},
		{
			// Scenario: sub-types present but Email/Webhook are nil within them.
			// The else branch for the sub-type fires, but inner nil checks take the nil path.
			name: "sub-types present with nil Email and Webhook — no panic",
			resp: &shared.WorkspaceResponse{
				WorkspaceID:   "ws-004",
				Name:          "empty-sub-types",
				DataResidency: "auto",
				Notifications: shared.NotificationsConfig{
					ConnectionUpdate:               &shared.NotificationConfig{},
					ConnectionUpdateActionRequired: &shared.NotificationConfig{},
					Failure:                        &shared.NotificationConfig{},
					Success:                        &shared.NotificationConfig{},
					SyncDisabled:                   &shared.NotificationConfig{},
					SyncDisabledWarning:            &shared.NotificationConfig{},
				},
			},
		},
		{
			// Scenario: mixed — some sub-types nil, some with email only, some with webhook only.
			name: "mixed nil and non-nil sub-types — no panic",
			resp: &shared.WorkspaceResponse{
				WorkspaceID:   "ws-005",
				Name:          "mixed-notifications",
				DataResidency: "auto",
				Notifications: shared.NotificationsConfig{
					ConnectionUpdate: &shared.NotificationConfig{
						Email: &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
					},
					Failure: nil,
					Success: &shared.NotificationConfig{
						Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(true), URL: stringPtr("https://example.com/success")},
					},
					SyncDisabled: nil,
				},
			},
		},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()

			// Test WorkspaceResourceModel
			resource := &WorkspaceResourceModel{}
			diags := resource.RefreshFromSharedWorkspaceResponse(context.Background(), tc.resp)
			require.False(t, diags.HasError(), "resource: unexpected error: %s", diags.Errors())
			assert.Equal(t, tc.resp.Name, resource.Name.ValueString())
			assert.Equal(t, tc.resp.WorkspaceID, resource.WorkspaceID.ValueString())
			assert.NotNil(t, resource.Notifications, "resource: Notifications should be initialized")

			// Test WorkspaceDataSourceModel
			dataSource := &WorkspaceDataSourceModel{}
			diags = dataSource.RefreshFromSharedWorkspaceResponse(context.Background(), tc.resp)
			require.False(t, diags.HasError(), "data source: unexpected error: %s", diags.Errors())
			assert.Equal(t, tc.resp.Name, dataSource.Name.ValueString())
			assert.Equal(t, tc.resp.WorkspaceID, dataSource.WorkspaceID.ValueString())
			assert.NotNil(t, dataSource.Notifications, "data source: Notifications should be initialized")
		})
	}
}

func TestWorkspaceResource_RefreshFromSharedWorkspaceResponse_ValuesPreserved(t *testing.T) {
	t.Parallel()

	// Verify that the patched code correctly populates notification values
	// from a fully-populated API response.
	resp := &shared.WorkspaceResponse{
		WorkspaceID:   "ws-values",
		Name:          "values-test",
		DataResidency: "us",
		Notifications: shared.NotificationsConfig{
			Failure: &shared.NotificationConfig{
				Email:   &shared.EmailNotificationConfig{Enabled: boolPtr(true)},
				Webhook: &shared.WebhookNotificationConfig{Enabled: boolPtr(false), URL: stringPtr("https://hooks.example.com/fail")},
			},
			Success: &shared.NotificationConfig{
				Email: &shared.EmailNotificationConfig{Enabled: boolPtr(false)},
			},
		},
	}

	resource := &WorkspaceResourceModel{}
	diags := resource.RefreshFromSharedWorkspaceResponse(context.Background(), resp)
	require.False(t, diags.HasError())

	// Failure sub-type
	require.NotNil(t, resource.Notifications.Failure)
	require.NotNil(t, resource.Notifications.Failure.Email)
	assert.Equal(t, types.BoolValue(true), resource.Notifications.Failure.Email.Enabled)
	require.NotNil(t, resource.Notifications.Failure.Webhook)
	assert.Equal(t, types.BoolValue(false), resource.Notifications.Failure.Webhook.Enabled)
	assert.Equal(t, types.StringValue("https://hooks.example.com/fail"), resource.Notifications.Failure.Webhook.URL)

	// Success sub-type — email only, webhook nil
	require.NotNil(t, resource.Notifications.Success)
	require.NotNil(t, resource.Notifications.Success.Email)
	assert.Equal(t, types.BoolValue(false), resource.Notifications.Success.Email.Enabled)
	assert.Nil(t, resource.Notifications.Success.Webhook)

	// ConnectionUpdate — nil in response
	assert.Nil(t, resource.Notifications.ConnectionUpdate)
}
