// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceProductiveRequest struct {
	SourceID                   string                             `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceProductivePutRequest *shared.SourceProductivePutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceProductiveRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceProductiveRequest) GetSourceProductivePutRequest() *shared.SourceProductivePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceProductivePutRequest
}

type PutSourceProductiveResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceProductiveResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceProductiveResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceProductiveResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
