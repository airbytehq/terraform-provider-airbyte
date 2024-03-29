// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceHubplannerPutRequest struct {
	Configuration SourceHubplannerUpdate `json:"configuration"`
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
}

func (o *SourceHubplannerPutRequest) GetConfiguration() SourceHubplannerUpdate {
	if o == nil {
		return SourceHubplannerUpdate{}
	}
	return o.Configuration
}

func (o *SourceHubplannerPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceHubplannerPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
