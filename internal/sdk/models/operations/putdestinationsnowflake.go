// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutDestinationSnowflakeRequest struct {
	DestinationID                  string                                 `pathParam:"style=simple,explode=false,name=destinationId"`
	DestinationSnowflakePutRequest *shared.DestinationSnowflakePutRequest `request:"mediaType=application/json"`
}

func (o *PutDestinationSnowflakeRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

func (o *PutDestinationSnowflakeRequest) GetDestinationSnowflakePutRequest() *shared.DestinationSnowflakePutRequest {
	if o == nil {
		return nil
	}
	return o.DestinationSnowflakePutRequest
}

type PutDestinationSnowflakeResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutDestinationSnowflakeResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutDestinationSnowflakeResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutDestinationSnowflakeResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
