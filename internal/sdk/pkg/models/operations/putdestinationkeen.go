// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/pkg/models/shared"
	"net/http"
)

type PutDestinationKeenRequest struct {
	DestinationKeenPutRequest *shared.DestinationKeenPutRequest `request:"mediaType=application/json"`
	DestinationID             string                            `pathParam:"style=simple,explode=false,name=destinationId"`
}

func (o *PutDestinationKeenRequest) GetDestinationKeenPutRequest() *shared.DestinationKeenPutRequest {
	if o == nil {
		return nil
	}
	return o.DestinationKeenPutRequest
}

func (o *PutDestinationKeenRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

type PutDestinationKeenResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutDestinationKeenResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutDestinationKeenResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutDestinationKeenResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
