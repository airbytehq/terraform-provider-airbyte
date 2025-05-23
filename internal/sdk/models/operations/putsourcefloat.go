// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceFloatRequest struct {
	SourceID              string                        `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceFloatPutRequest *shared.SourceFloatPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceFloatRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceFloatRequest) GetSourceFloatPutRequest() *shared.SourceFloatPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceFloatPutRequest
}

type PutSourceFloatResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceFloatResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceFloatResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceFloatResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
