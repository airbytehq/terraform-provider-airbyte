// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceSapFieldglassRequest struct {
	SourceSapFieldglassPutRequest *shared.SourceSapFieldglassPutRequest `request:"mediaType=application/json"`
	SourceID                      string                                `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *PutSourceSapFieldglassRequest) GetSourceSapFieldglassPutRequest() *shared.SourceSapFieldglassPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceSapFieldglassPutRequest
}

func (o *PutSourceSapFieldglassRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type PutSourceSapFieldglassResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceSapFieldglassResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceSapFieldglassResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceSapFieldglassResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}