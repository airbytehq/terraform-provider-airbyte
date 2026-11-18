package provider

import (
	"context"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-go/tfprotov6"
	"github.com/stretchr/testify/assert"
)

func TestDestinationResourceMoveState(t *testing.T) {
	tests := []struct {
		name            string
		sourceTypeName  string
		providerAddress string
		matches         bool
	}{
		{
			name:            "bare provider address",
			sourceTypeName:  "airbyte_destination_postgres",
			providerAddress: "airbyte",
			matches:         true,
		},
		{
			name:            "terraform registry provider address",
			sourceTypeName:  "airbyte_destination_postgres",
			providerAddress: "registry.terraform.io/airbytehq/airbyte",
			matches:         true,
		},
		{
			name:            "opentofu registry provider address",
			sourceTypeName:  "airbyte_destination_postgres",
			providerAddress: "registry.opentofu.org/airbytehq/airbyte",
			matches:         true,
		},
		{
			name:            "third-party provider address",
			sourceTypeName:  "airbyte_destination_postgres",
			providerAddress: "example.com/notairbytehq/airbyte",
			matches:         false,
		},
		{
			name:            "generic resource self-move",
			sourceTypeName:  "airbyte_destination",
			providerAddress: "airbyte",
			matches:         false,
		},
		{
			name:            "non-destination resource prefix",
			sourceTypeName:  "airbyte_source_postgres",
			providerAddress: "airbyte",
			matches:         false,
		},
	}

	// The raw state is deliberately invalid JSON, so a parse diagnostic is
	// raised only when the mover accepts the source resource and provider.
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			req := resource.MoveStateRequest{
				SourceProviderAddress: tt.providerAddress,
				SourceRawState:        &tfprotov6.RawState{JSON: []byte("{")},
				SourceTypeName:        tt.sourceTypeName,
			}
			resp := resource.MoveStateResponse{}

			(&DestinationResource{}).MoveState(context.Background())[0].StateMover(context.Background(), req, &resp)

			assert.Equal(t, tt.matches, len(resp.Diagnostics) > 0)
		})
	}
}
