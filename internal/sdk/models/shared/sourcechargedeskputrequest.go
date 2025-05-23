// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceChargedeskPutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceChargedeskUpdate `json:"configuration"`
}

func (o *SourceChargedeskPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceChargedeskPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceChargedeskPutRequest) GetConfiguration() SourceChargedeskUpdate {
	if o == nil {
		return SourceChargedeskUpdate{}
	}
	return o.Configuration
}
