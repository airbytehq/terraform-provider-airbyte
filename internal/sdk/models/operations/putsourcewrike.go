// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceWrikeRequest struct {
	SourceID              string                        `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceWrikePutRequest *shared.SourceWrikePutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceWrikeRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceWrikeRequest) GetSourceWrikePutRequest() *shared.SourceWrikePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceWrikePutRequest
}

type PutSourceWrikeResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceWrikeResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceWrikeResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceWrikeResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
