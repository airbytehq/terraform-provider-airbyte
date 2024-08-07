// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceMixpanelRequest struct {
	SourceMixpanelPutRequest *shared.SourceMixpanelPutRequest `request:"mediaType=application/json"`
	SourceID                 string                           `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *PutSourceMixpanelRequest) GetSourceMixpanelPutRequest() *shared.SourceMixpanelPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceMixpanelPutRequest
}

func (o *PutSourceMixpanelRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type PutSourceMixpanelResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceMixpanelResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceMixpanelResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceMixpanelResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
