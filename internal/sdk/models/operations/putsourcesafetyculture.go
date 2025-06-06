// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceSafetycultureRequest struct {
	SourceID                      string                                `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceSafetyculturePutRequest *shared.SourceSafetyculturePutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceSafetycultureRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceSafetycultureRequest) GetSourceSafetyculturePutRequest() *shared.SourceSafetyculturePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceSafetyculturePutRequest
}

type PutSourceSafetycultureResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceSafetycultureResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceSafetycultureResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceSafetycultureResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
