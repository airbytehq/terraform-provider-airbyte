// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceTeamworkPutRequest struct {
	Configuration SourceTeamworkUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceTeamworkPutRequest) GetConfiguration() SourceTeamworkUpdate {
	if o == nil {
		return SourceTeamworkUpdate{}
	}
	return o.Configuration
}

func (o *SourceTeamworkPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceTeamworkPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
