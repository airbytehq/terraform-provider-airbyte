// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceLokalisePutRequest struct {
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
	Configuration SourceLokaliseUpdate `json:"configuration"`
}

func (o *SourceLokalisePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceLokalisePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceLokalisePutRequest) GetConfiguration() SourceLokaliseUpdate {
	if o == nil {
		return SourceLokaliseUpdate{}
	}
	return o.Configuration
}
