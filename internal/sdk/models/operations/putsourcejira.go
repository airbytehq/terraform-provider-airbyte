// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceJiraRequest struct {
	SourceID             string                       `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceJiraPutRequest *shared.SourceJiraPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceJiraRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceJiraRequest) GetSourceJiraPutRequest() *shared.SourceJiraPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceJiraPutRequest
}

type PutSourceJiraResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceJiraResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceJiraResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceJiraResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
