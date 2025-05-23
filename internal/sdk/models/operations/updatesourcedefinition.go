// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package operations

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"net/http"
)

type UpdateSourceDefinitionRequest struct {
	WorkspaceID             string                         `pathParam:"style=simple,explode=false,name=workspaceId"`
	DefinitionID            string                         `pathParam:"style=simple,explode=false,name=definitionId"`
	UpdateDefinitionRequest shared.UpdateDefinitionRequest `request:"mediaType=application/json"`
}

func (o *UpdateSourceDefinitionRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *UpdateSourceDefinitionRequest) GetDefinitionID() string {
	if o == nil {
		return ""
	}
	return o.DefinitionID
}

func (o *UpdateSourceDefinitionRequest) GetUpdateDefinitionRequest() shared.UpdateDefinitionRequest {
	if o == nil {
		return shared.UpdateDefinitionRequest{}
	}
	return o.UpdateDefinitionRequest
}

type UpdateSourceDefinitionResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
	// Success
	DefinitionResponse *shared.DefinitionResponse
}

func (o *UpdateSourceDefinitionResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *UpdateSourceDefinitionResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *UpdateSourceDefinitionResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}

func (o *UpdateSourceDefinitionResponse) GetDefinitionResponse() *shared.DefinitionResponse {
	if o == nil {
		return nil
	}
	return o.DefinitionResponse
}
