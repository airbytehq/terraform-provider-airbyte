// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeleteSourceOuraRequest struct {
	SourceID string `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *DeleteSourceOuraRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type DeleteSourceOuraResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *DeleteSourceOuraResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeleteSourceOuraResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeleteSourceOuraResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
