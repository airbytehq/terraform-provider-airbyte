// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceShortioRequest struct {
	SourceID                string                          `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceShortioPutRequest *shared.SourceShortioPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceShortioRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceShortioRequest) GetSourceShortioPutRequest() *shared.SourceShortioPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceShortioPutRequest
}

type PutSourceShortioResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceShortioResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceShortioResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceShortioResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
