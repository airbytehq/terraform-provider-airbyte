// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceFastlyPutRequest struct {
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceFastlyUpdate `json:"configuration"`
}

func (o *SourceFastlyPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFastlyPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceFastlyPutRequest) GetConfiguration() SourceFastlyUpdate {
	if o == nil {
		return SourceFastlyUpdate{}
	}
	return o.Configuration
}
