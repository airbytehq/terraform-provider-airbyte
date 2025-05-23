// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type GetSourceAlpacaBrokerAPIRequest struct {
	SourceID string `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *GetSourceAlpacaBrokerAPIRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type GetSourceAlpacaBrokerAPIResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Get a Source by the id in the path.
	SourceResponse *shared.SourceResponse
}

func (o *GetSourceAlpacaBrokerAPIResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *GetSourceAlpacaBrokerAPIResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *GetSourceAlpacaBrokerAPIResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *GetSourceAlpacaBrokerAPIResponse) GetSourceResponse() *shared.SourceResponse {
	if o == nil {
		return nil
	}
	return o.SourceResponse
}
