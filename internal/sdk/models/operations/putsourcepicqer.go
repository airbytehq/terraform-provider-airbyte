// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourcePicqerRequest struct {
	SourceID               string                         `pathParam:"style=simple,explode=false,name=sourceId"`
	SourcePicqerPutRequest *shared.SourcePicqerPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourcePicqerRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourcePicqerRequest) GetSourcePicqerPutRequest() *shared.SourcePicqerPutRequest {
	if o == nil {
		return nil
	}
	return o.SourcePicqerPutRequest
}

type PutSourcePicqerResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourcePicqerResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourcePicqerResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourcePicqerResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
