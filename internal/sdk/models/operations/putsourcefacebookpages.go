// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceFacebookPagesRequest struct {
	SourceID                      string                                `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceFacebookPagesPutRequest *shared.SourceFacebookPagesPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceFacebookPagesRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceFacebookPagesRequest) GetSourceFacebookPagesPutRequest() *shared.SourceFacebookPagesPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceFacebookPagesPutRequest
}

type PutSourceFacebookPagesResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceFacebookPagesResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceFacebookPagesResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceFacebookPagesResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
