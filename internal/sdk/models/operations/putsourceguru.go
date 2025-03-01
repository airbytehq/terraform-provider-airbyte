// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceGuruRequest struct {
	SourceID             string                       `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceGuruPutRequest *shared.SourceGuruPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceGuruRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceGuruRequest) GetSourceGuruPutRequest() *shared.SourceGuruPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceGuruPutRequest
}

type PutSourceGuruResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceGuruResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceGuruResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceGuruResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
