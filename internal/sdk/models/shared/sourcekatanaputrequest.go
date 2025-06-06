// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceKatanaPutRequest struct {
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceKatanaUpdate `json:"configuration"`
}

func (o *SourceKatanaPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceKatanaPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceKatanaPutRequest) GetConfiguration() SourceKatanaUpdate {
	if o == nil {
		return SourceKatanaUpdate{}
	}
	return o.Configuration
}
