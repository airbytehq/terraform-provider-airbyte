// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeleteDestinationSnowflakeCortexRequest struct {
	DestinationID string `pathParam:"style=simple,explode=false,name=destinationId"`
}

func (o *DeleteDestinationSnowflakeCortexRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

type DeleteDestinationSnowflakeCortexResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *DeleteDestinationSnowflakeCortexResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DeleteDestinationSnowflakeCortexResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DeleteDestinationSnowflakeCortexResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
