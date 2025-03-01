// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMailjetSmsPutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceMailjetSmsUpdate `json:"configuration"`
}

func (o *SourceMailjetSmsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceMailjetSmsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceMailjetSmsPutRequest) GetConfiguration() SourceMailjetSmsUpdate {
	if o == nil {
		return SourceMailjetSmsUpdate{}
	}
	return o.Configuration
}
