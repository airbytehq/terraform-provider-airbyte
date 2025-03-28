// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceRocketChatRequest struct {
	SourceID                   string                             `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceRocketChatPutRequest *shared.SourceRocketChatPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceRocketChatRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceRocketChatRequest) GetSourceRocketChatPutRequest() *shared.SourceRocketChatPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceRocketChatPutRequest
}

type PutSourceRocketChatResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceRocketChatResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceRocketChatResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceRocketChatResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
