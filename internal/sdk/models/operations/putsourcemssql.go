// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceMssqlRequest struct {
	SourceID              string                        `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceMssqlPutRequest *shared.SourceMssqlPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceMssqlRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceMssqlRequest) GetSourceMssqlPutRequest() *shared.SourceMssqlPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceMssqlPutRequest
}

type PutSourceMssqlResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceMssqlResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceMssqlResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceMssqlResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
