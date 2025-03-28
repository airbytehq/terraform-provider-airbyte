// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceKyveRequest struct {
	SourceID             string                       `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceKyvePutRequest *shared.SourceKyvePutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceKyveRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceKyveRequest) GetSourceKyvePutRequest() *shared.SourceKyvePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceKyvePutRequest
}

type PutSourceKyveResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceKyveResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceKyveResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceKyveResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
