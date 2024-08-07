// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceIntercom struct {
	AccessToken          types.String `tfsdk:"access_token"`
	ActivityLogsTimeStep types.Int64  `tfsdk:"activity_logs_time_step"`
	ClientID             types.String `tfsdk:"client_id"`
	ClientSecret         types.String `tfsdk:"client_secret"`
	StartDate            types.String `tfsdk:"start_date"`
}
