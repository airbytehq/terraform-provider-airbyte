// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceMendeleyRequest struct {
	SourceID                 string                           `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceMendeleyPutRequest *shared.SourceMendeleyPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceMendeleyRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceMendeleyRequest) GetSourceMendeleyPutRequest() *shared.SourceMendeleyPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceMendeleyPutRequest
}

type PutSourceMendeleyResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceMendeleyResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceMendeleyResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceMendeleyResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
