// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceTrustpilotRequest struct {
	SourceID                   string                             `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceTrustpilotPutRequest *shared.SourceTrustpilotPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceTrustpilotRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceTrustpilotRequest) GetSourceTrustpilotPutRequest() *shared.SourceTrustpilotPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceTrustpilotPutRequest
}

type PutSourceTrustpilotResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceTrustpilotResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceTrustpilotResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceTrustpilotResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
