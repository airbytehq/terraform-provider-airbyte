// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceKlaviyoPutRequest struct {
	Configuration SourceKlaviyoUpdate `json:"configuration"`
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
}

func (o *SourceKlaviyoPutRequest) GetConfiguration() SourceKlaviyoUpdate {
	if o == nil {
		return SourceKlaviyoUpdate{}
	}
	return o.Configuration
}

func (o *SourceKlaviyoPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceKlaviyoPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
