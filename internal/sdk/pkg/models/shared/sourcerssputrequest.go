// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceRssPutRequest struct {
	Configuration SourceRssUpdate `json:"configuration"`
	Name          string          `json:"name"`
	WorkspaceID   string          `json:"workspaceId"`
}

func (o *SourceRssPutRequest) GetConfiguration() SourceRssUpdate {
	if o == nil {
		return SourceRssUpdate{}
	}
	return o.Configuration
}

func (o *SourceRssPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceRssPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
