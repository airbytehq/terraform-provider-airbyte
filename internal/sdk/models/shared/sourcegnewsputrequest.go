// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGnewsPutRequest struct {
	Name          string            `json:"name"`
	WorkspaceID   string            `json:"workspaceId"`
	Configuration SourceGnewsUpdate `json:"configuration"`
}

func (o *SourceGnewsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGnewsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceGnewsPutRequest) GetConfiguration() SourceGnewsUpdate {
	if o == nil {
		return SourceGnewsUpdate{}
	}
	return o.Configuration
}
