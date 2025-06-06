// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSendinbluePutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceSendinblueUpdate `json:"configuration"`
}

func (o *SourceSendinbluePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSendinbluePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSendinbluePutRequest) GetConfiguration() SourceSendinblueUpdate {
	if o == nil {
		return SourceSendinblueUpdate{}
	}
	return o.Configuration
}
