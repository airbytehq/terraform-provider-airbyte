// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type PutSourceGoogleDriveRequest struct {
	SourceGoogleDrivePutRequest *shared.SourceGoogleDrivePutRequest `request:"mediaType=application/json"`
	SourceID                    string                              `pathParam:"style=simple,explode=false,name=sourceId"`
}

func (o *PutSourceGoogleDriveRequest) GetSourceGoogleDrivePutRequest() *shared.SourceGoogleDrivePutRequest {
	if o == nil {
		return nil
	}
	return o.SourceGoogleDrivePutRequest
}

func (o *PutSourceGoogleDriveRequest) GetSourceID() string {
	if o == nil {
		return ""
	}
	return o.SourceID
}

type PutSourceGoogleDriveResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *PutSourceGoogleDriveResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *PutSourceGoogleDriveResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *PutSourceGoogleDriveResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
