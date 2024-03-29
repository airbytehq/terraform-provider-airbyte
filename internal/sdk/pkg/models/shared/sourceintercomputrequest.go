// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceIntercomPutRequest struct {
	Configuration SourceIntercomUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceIntercomPutRequest) GetConfiguration() SourceIntercomUpdate {
	if o == nil {
		return SourceIntercomUpdate{}
	}
	return o.Configuration
}

func (o *SourceIntercomPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceIntercomPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
