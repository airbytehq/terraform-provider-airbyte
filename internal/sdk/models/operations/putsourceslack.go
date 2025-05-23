// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceSlackRequest struct {
	SourceID              string                        `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceSlackPutRequest *shared.SourceSlackPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceSlackRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceSlackRequest) GetSourceSlackPutRequest() *shared.SourceSlackPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceSlackPutRequest
}

type PutSourceSlackResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceSlackResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceSlackResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceSlackResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
