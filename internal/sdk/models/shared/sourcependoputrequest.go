// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourcePendoPutRequest struct {
	Configuration SourcePendoUpdate `json:"configuration"`
	Name          string            `json:"name"`
	WorkspaceID   string            `json:"workspaceId"`
}

func (o *SourcePendoPutRequest) GetConfiguration() SourcePendoUpdate {
	if o == nil {
		return SourcePendoUpdate{}
	}
	return o.Configuration
}

func (o *SourcePendoPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourcePendoPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}