package provider

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestIsAirbyteProviderAddress(t *testing.T) {
	tests := []struct {
		address string
		matches bool
	}{
		{address: "airbyte", matches: true},
		{address: "airbytehq/airbyte", matches: true},
		{address: "registry.terraform.io/airbytehq/airbyte", matches: true},
		{address: "registry.opentofu.org/airbytehq/airbyte", matches: true},
		{address: "example.com/notairbytehq/airbyte", matches: false},
		{address: "foo/airbyte", matches: false},
		{address: "airbytehq/notairbyte", matches: false},
		{address: "registry.example.com/airbytehq/airbyte/extra", matches: false},
	}

	for _, tt := range tests {
		t.Run(tt.address, func(t *testing.T) {
			assert.Equal(t, tt.matches, isAirbyteProviderAddress(tt.address))
		})
	}
}
