// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
	"time"
)

type ListJobsRequest struct {
	// Filter the Jobs by connectionId.
	ConnectionID *string `queryParam:"style=form,explode=true,name=connectionId"`
	// Set the limit on the number of Jobs returned. The default is 20 Jobs.
	Limit *int `default:"20" queryParam:"style=form,explode=true,name=limit"`
	// Set the offset to start at when returning Jobs. The default is 0.
	Offset *int `default:"0" queryParam:"style=form,explode=true,name=offset"`
	// Filter the Jobs by jobType.
	JobType *shared.JobTypeEnum `queryParam:"style=form,explode=true,name=jobType"`
	// The UUIDs of the workspaces you wish to list jobs for. Empty list will retrieve all allowed workspaces.
	WorkspaceIds []string `queryParam:"style=form,explode=true,name=workspaceIds"`
	// The Job status you want to filter by
	Status *shared.JobStatusEnum `queryParam:"style=form,explode=true,name=status"`
	// The start date to filter by
	CreatedAtStart *time.Time `queryParam:"style=form,explode=true,name=createdAtStart"`
	// The end date to filter by
	CreatedAtEnd *time.Time `queryParam:"style=form,explode=true,name=createdAtEnd"`
	// The start date to filter by
	UpdatedAtStart *time.Time `queryParam:"style=form,explode=true,name=updatedAtStart"`
	// The end date to filter by
	UpdatedAtEnd *time.Time `queryParam:"style=form,explode=true,name=updatedAtEnd"`
	// The field and method to use for ordering
	OrderBy *string `queryParam:"style=form,explode=true,name=orderBy"`
}

func (l ListJobsRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(l, "", false)
}

func (l *ListJobsRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &l, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *ListJobsRequest) GetConnectionID() *string {
	if o == nil {
		return nil
	}
	return o.ConnectionID
}

func (o *ListJobsRequest) GetLimit() *int {
	if o == nil {
		return nil
	}
	return o.Limit
}

func (o *ListJobsRequest) GetOffset() *int {
	if o == nil {
		return nil
	}
	return o.Offset
}

func (o *ListJobsRequest) GetJobType() *shared.JobTypeEnum {
	if o == nil {
		return nil
	}
	return o.JobType
}

func (o *ListJobsRequest) GetWorkspaceIds() []string {
	if o == nil {
		return nil
	}
	return o.WorkspaceIds
}

func (o *ListJobsRequest) GetStatus() *shared.JobStatusEnum {
	if o == nil {
		return nil
	}
	return o.Status
}

func (o *ListJobsRequest) GetCreatedAtStart() *time.Time {
	if o == nil {
		return nil
	}
	return o.CreatedAtStart
}

func (o *ListJobsRequest) GetCreatedAtEnd() *time.Time {
	if o == nil {
		return nil
	}
	return o.CreatedAtEnd
}

func (o *ListJobsRequest) GetUpdatedAtStart() *time.Time {
	if o == nil {
		return nil
	}
	return o.UpdatedAtStart
}

func (o *ListJobsRequest) GetUpdatedAtEnd() *time.Time {
	if o == nil {
		return nil
	}
	return o.UpdatedAtEnd
}

func (o *ListJobsRequest) GetOrderBy() *string {
	if o == nil {
		return nil
	}
	return o.OrderBy
}

type ListJobsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// List all the Jobs by connectionId.
	JobsResponse *shared.JobsResponse
}

func (o *ListJobsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *ListJobsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *ListJobsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *ListJobsResponse) GetJobsResponse() *shared.JobsResponse {
	if o == nil {
		return nil
	}
	return o.JobsResponse
}
