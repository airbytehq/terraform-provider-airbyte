// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceFreshdeskPutRequest struct {
	Configuration SourceFreshdeskUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourceFreshdeskPutRequest) GetConfiguration() SourceFreshdeskUpdate {
	if o == nil {
		return SourceFreshdeskUpdate{}
	}
	return o.Configuration
}

func (o *SourceFreshdeskPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFreshdeskPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
