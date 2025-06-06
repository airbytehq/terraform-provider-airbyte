// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceChameleonPutRequest struct {
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
	Configuration SourceChameleonUpdate `json:"configuration"`
}

func (o *SourceChameleonPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceChameleonPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceChameleonPutRequest) GetConfiguration() SourceChameleonUpdate {
	if o == nil {
		return SourceChameleonUpdate{}
	}
	return o.Configuration
}
