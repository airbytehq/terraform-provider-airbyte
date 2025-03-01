// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMissivePutRequest struct {
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration SourceMissiveUpdate `json:"configuration"`
}

func (o *SourceMissivePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceMissivePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceMissivePutRequest) GetConfiguration() SourceMissiveUpdate {
	if o == nil {
		return SourceMissiveUpdate{}
	}
	return o.Configuration
}
