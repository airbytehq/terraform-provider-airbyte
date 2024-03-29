// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceTheGuardianAPIPutRequest struct {
	Configuration SourceTheGuardianAPIUpdate `json:"configuration"`
	Name          string                     `json:"name"`
	WorkspaceID   string                     `json:"workspaceId"`
}

func (o *SourceTheGuardianAPIPutRequest) GetConfiguration() SourceTheGuardianAPIUpdate {
	if o == nil {
		return SourceTheGuardianAPIUpdate{}
	}
	return o.Configuration
}

func (o *SourceTheGuardianAPIPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceTheGuardianAPIPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
