// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceKekaPutRequest struct {
	Name          string           `json:"name"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceKekaUpdate `json:"configuration"`
}

func (o *SourceKekaPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceKekaPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceKekaPutRequest) GetConfiguration() SourceKekaUpdate {
	if o == nil {
		return SourceKekaUpdate{}
	}
	return o.Configuration
}
