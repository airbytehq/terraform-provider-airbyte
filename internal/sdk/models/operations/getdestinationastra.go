// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type GetDestinationAstraRequest struct {
	DestinationID string `pathParam:"style=simple,explode=false,name=destinationId"`
}

func (o *GetDestinationAstraRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

type GetDestinationAstraResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Get a Destination by the id in the path.
	DestinationResponse *shared.DestinationResponse
}

func (o *GetDestinationAstraResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetDestinationAstraResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetDestinationAstraResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GetDestinationAstraResponse) GetDestinationResponse() *shared.DestinationResponse {
	if o == nil {
		return nil
	}
	return o.DestinationResponse
}
