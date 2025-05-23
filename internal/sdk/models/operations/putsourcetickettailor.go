// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceTickettailorRequest struct {
	SourceID                     string                               `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceTickettailorPutRequest *shared.SourceTickettailorPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceTickettailorRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceTickettailorRequest) GetSourceTickettailorPutRequest() *shared.SourceTickettailorPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceTickettailorPutRequest
}

type PutSourceTickettailorResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceTickettailorResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceTickettailorResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceTickettailorResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
