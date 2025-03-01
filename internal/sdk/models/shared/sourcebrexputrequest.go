// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceBrexPutRequest struct {
	Name          string           `json:"name"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceBrexUpdate `json:"configuration"`
}

func (o *SourceBrexPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceBrexPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceBrexPutRequest) GetConfiguration() SourceBrexUpdate {
	if o == nil {
		return SourceBrexUpdate{}
	}
	return o.Configuration
}
