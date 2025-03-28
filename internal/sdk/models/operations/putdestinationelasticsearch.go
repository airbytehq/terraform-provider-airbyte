// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutDestinationElasticsearchRequest struct {
	DestinationID                      string                                     `pathParam:"style=simple,explode=false,name=destinationId"`
	DestinationElasticsearchPutRequest *shared.DestinationElasticsearchPutRequest `request:"mediaType=application/json"`
}

func (o *PutDestinationElasticsearchRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

func (o *PutDestinationElasticsearchRequest) GetDestinationElasticsearchPutRequest() *shared.DestinationElasticsearchPutRequest {
	if o == nil {
		return nil
	}
	return o.DestinationElasticsearchPutRequest
}

type PutDestinationElasticsearchResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutDestinationElasticsearchResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutDestinationElasticsearchResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutDestinationElasticsearchResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
