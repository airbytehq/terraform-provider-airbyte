// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceUsCensusPutRequest struct {
	Configuration SourceUsCensusUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceUsCensusPutRequest) GetConfiguration() SourceUsCensusUpdate {
	if o == nil {
		return SourceUsCensusUpdate{}
	}
	return o.Configuration
}

func (o *SourceUsCensusPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceUsCensusPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
