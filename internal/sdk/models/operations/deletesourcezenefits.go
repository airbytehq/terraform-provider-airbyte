// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeleteSourceZenefitsRequest struct {
	SourceID string `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *DeleteSourceZenefitsRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type DeleteSourceZenefitsResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *DeleteSourceZenefitsResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeleteSourceZenefitsResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeleteSourceZenefitsResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
