// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutDestinationSnowflakeCortexRequest struct {
	DestinationID                        string                                       `pathParam:"style=simple,explode=false,name=destinationId"`
	DestinationSnowflakeCortexPutRequest *shared.DestinationSnowflakeCortexPutRequest `request:"mediaType=application/json"`
}

func (o *PutDestinationSnowflakeCortexRequest) GetDestinationID() string {
	if o == nil {
		return ""
	}
	return o.DestinationID
}

func (o *PutDestinationSnowflakeCortexRequest) GetDestinationSnowflakeCortexPutRequest() *shared.DestinationSnowflakeCortexPutRequest {
	if o == nil {
		return nil
	}
	return o.DestinationSnowflakeCortexPutRequest
}

type PutDestinationSnowflakeCortexResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutDestinationSnowflakeCortexResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutDestinationSnowflakeCortexResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutDestinationSnowflakeCortexResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
