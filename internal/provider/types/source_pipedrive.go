// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourcePipedrive struct {
	APIToken             types.String `tfsdk:"api_token"`
	NumWorkers           types.Int64  `tfsdk:"num_workers"`
	ReplicationStartDate types.String `tfsdk:"replication_start_date"`
}
