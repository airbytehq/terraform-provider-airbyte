// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceWorkdayResourceModel) ToSharedSourceWorkdayCreateRequest() *shared.SourceWorkdayCreateRequest {
	var name string
	name = r.Name.ValueString()

	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var tenantID string
	tenantID = r.Configuration.TenantID.ValueString()

	var host string
	host = r.Configuration.Host.ValueString()

	var credentials shared.SourceWorkdayAuthentication
	var reportBasedStreams *shared.ReportBasedStreams
	if r.Configuration.Credentials.ReportBasedStreams != nil {
		var username string
		username = r.Configuration.Credentials.ReportBasedStreams.Username.ValueString()

		var password string
		password = r.Configuration.Credentials.ReportBasedStreams.Password.ValueString()

		var reportIds []interface{} = []interface{}{}
		for _, reportIdsItem := range r.Configuration.Credentials.ReportBasedStreams.ReportIds {
			var reportIdsTmp interface{}
			_ = json.Unmarshal([]byte(reportIdsItem.ValueString()), &reportIdsTmp)
			reportIds = append(reportIds, reportIdsTmp)
		}
		reportBasedStreams = &shared.ReportBasedStreams{
			Username:  username,
			Password:  password,
			ReportIds: reportIds,
		}
	}
	if reportBasedStreams != nil {
		credentials = shared.SourceWorkdayAuthentication{
			ReportBasedStreams: reportBasedStreams,
		}
	}
	var restAPIStreams *shared.RESTAPIStreams
	if r.Configuration.Credentials.RESTAPIStreams != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.RESTAPIStreams.AccessToken.ValueString()

		startDate := new(time.Time)
		if !r.Configuration.Credentials.RESTAPIStreams.StartDate.IsUnknown() && !r.Configuration.Credentials.RESTAPIStreams.StartDate.IsNull() {
			*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.Credentials.RESTAPIStreams.StartDate.ValueString())
		} else {
			startDate = nil
		}
		restAPIStreams = &shared.RESTAPIStreams{
			AccessToken: accessToken,
			StartDate:   startDate,
		}
	}
	if restAPIStreams != nil {
		credentials = shared.SourceWorkdayAuthentication{
			RESTAPIStreams: restAPIStreams,
		}
	}
	configuration := shared.SourceWorkday{
		TenantID:    tenantID,
		Host:        host,
		Credentials: credentials,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceWorkdayCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceWorkdayResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceWorkdayResourceModel) ToSharedSourceWorkdayPutRequest() *shared.SourceWorkdayPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var tenantID string
	tenantID = r.Configuration.TenantID.ValueString()

	var host string
	host = r.Configuration.Host.ValueString()

	var credentials shared.SourceWorkdayUpdateAuthentication
	var sourceWorkdayUpdateReportBasedStreams *shared.SourceWorkdayUpdateReportBasedStreams
	if r.Configuration.Credentials.ReportBasedStreams != nil {
		var username string
		username = r.Configuration.Credentials.ReportBasedStreams.Username.ValueString()

		var password string
		password = r.Configuration.Credentials.ReportBasedStreams.Password.ValueString()

		var reportIds []interface{} = []interface{}{}
		for _, reportIdsItem := range r.Configuration.Credentials.ReportBasedStreams.ReportIds {
			var reportIdsTmp interface{}
			_ = json.Unmarshal([]byte(reportIdsItem.ValueString()), &reportIdsTmp)
			reportIds = append(reportIds, reportIdsTmp)
		}
		sourceWorkdayUpdateReportBasedStreams = &shared.SourceWorkdayUpdateReportBasedStreams{
			Username:  username,
			Password:  password,
			ReportIds: reportIds,
		}
	}
	if sourceWorkdayUpdateReportBasedStreams != nil {
		credentials = shared.SourceWorkdayUpdateAuthentication{
			SourceWorkdayUpdateReportBasedStreams: sourceWorkdayUpdateReportBasedStreams,
		}
	}
	var sourceWorkdayUpdateRESTAPIStreams *shared.SourceWorkdayUpdateRESTAPIStreams
	if r.Configuration.Credentials.RESTAPIStreams != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.RESTAPIStreams.AccessToken.ValueString()

		startDate := new(time.Time)
		if !r.Configuration.Credentials.RESTAPIStreams.StartDate.IsUnknown() && !r.Configuration.Credentials.RESTAPIStreams.StartDate.IsNull() {
			*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.Credentials.RESTAPIStreams.StartDate.ValueString())
		} else {
			startDate = nil
		}
		sourceWorkdayUpdateRESTAPIStreams = &shared.SourceWorkdayUpdateRESTAPIStreams{
			AccessToken: accessToken,
			StartDate:   startDate,
		}
	}
	if sourceWorkdayUpdateRESTAPIStreams != nil {
		credentials = shared.SourceWorkdayUpdateAuthentication{
			SourceWorkdayUpdateRESTAPIStreams: sourceWorkdayUpdateRESTAPIStreams,
		}
	}
	configuration := shared.SourceWorkdayUpdate{
		TenantID:    tenantID,
		Host:        host,
		Credentials: credentials,
	}
	out := shared.SourceWorkdayPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
