// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceAuth0PutRequest struct {
	Configuration SourceAuth0Update `json:"configuration"`
	Name          string            `json:"name"`
	WorkspaceID   string            `json:"workspaceId"`
}

func (o *SourceAuth0PutRequest) GetConfiguration() SourceAuth0Update {
	if o == nil {
		return SourceAuth0Update{}
	}
	return o.Configuration
}

func (o *SourceAuth0PutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAuth0PutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
