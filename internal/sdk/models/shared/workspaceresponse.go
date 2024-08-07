// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// WorkspaceResponse - Provides details of a single workspace.
type WorkspaceResponse struct {
	DataResidency *GeographyEnum `default:"auto" json:"dataResidency"`
	Name          string         `json:"name"`
	WorkspaceID   string         `json:"workspaceId"`
}

func (w WorkspaceResponse) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(w, "", false)
}

func (w *WorkspaceResponse) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &w, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *WorkspaceResponse) GetDataResidency() *GeographyEnum {
	if o == nil {
		return nil
	}
	return o.DataResidency
}

func (o *WorkspaceResponse) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *WorkspaceResponse) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
