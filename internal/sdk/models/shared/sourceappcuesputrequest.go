// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceAppcuesPutRequest struct {
	Configuration SourceAppcuesUpdate `json:"configuration"`
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
}

func (o *SourceAppcuesPutRequest) GetConfiguration() SourceAppcuesUpdate {
	if o == nil {
		return SourceAppcuesUpdate{}
	}
	return o.Configuration
}

func (o *SourceAppcuesPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAppcuesPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
