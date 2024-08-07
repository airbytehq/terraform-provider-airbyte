// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceGreenhouseRequest struct {
	SourceGreenhousePutRequest *shared.SourceGreenhousePutRequest `request:"mediaType=application/json"`
	SourceID                   string                             `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *PutSourceGreenhouseRequest) GetSourceGreenhousePutRequest() *shared.SourceGreenhousePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceGreenhousePutRequest
}

func (o *PutSourceGreenhouseRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type PutSourceGreenhouseResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceGreenhouseResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceGreenhouseResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceGreenhouseResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
