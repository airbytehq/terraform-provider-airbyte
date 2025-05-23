// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceShopwiredRequest struct {
	SourceID                  string                            `pathParam:"style=simple,explode=false,name=sourceId"`
	SourceShopwiredPutRequest *shared.SourceShopwiredPutRequest `request:"mediaType=application/json"`
}

func (o *PutSourceShopwiredRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

func (o *PutSourceShopwiredRequest) GetSourceShopwiredPutRequest() *shared.SourceShopwiredPutRequest {
	if o == nil {
		return nil
	}
	return o.SourceShopwiredPutRequest
}

type PutSourceShopwiredResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceShopwiredResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceShopwiredResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceShopwiredResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
