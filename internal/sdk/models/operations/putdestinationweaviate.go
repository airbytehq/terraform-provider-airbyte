// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutDestinationWeaviateRequest struct {
	DestinationID                 string                                `pathParam:"style=simple,explode=false,name=destinationId"`
	DestinationWeaviatePutRequest *shared.DestinationWeaviatePutRequest `request:"mediaType=application/json"`
}

func (o *PutDestinationWeaviateRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

func (o *PutDestinationWeaviateRequest) GetDestinationWeaviatePutRequest() *shared.DestinationWeaviatePutRequest {
	if o == nil {
		return nil
	}
	return o.DestinationWeaviatePutRequest
}

type PutDestinationWeaviateResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutDestinationWeaviateResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutDestinationWeaviateResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutDestinationWeaviateResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
