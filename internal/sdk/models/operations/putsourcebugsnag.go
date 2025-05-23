// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceBugsnagRequest struct {
	SourceID                string                          `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceBugsnagPutRequest *shared.SourceBugsnagPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceBugsnagRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceBugsnagRequest) GetSourceBugsnagPutRequest() *shared.SourceBugsnagPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceBugsnagPutRequest
}

type PutSourceBugsnagResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceBugsnagResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceBugsnagResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceBugsnagResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
