// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceTwitterPutRequest struct {
	Configuration SourceTwitterUpdate `json:"configuration"`
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
}

func (o *SourceTwitterPutRequest) GetConfiguration() SourceTwitterUpdate {
	if o == nil {
		return SourceTwitterUpdate{}
	}
	return o.Configuration
}

func (o *SourceTwitterPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceTwitterPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
