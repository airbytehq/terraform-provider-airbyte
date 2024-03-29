// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceDremioPutRequest struct {
	Configuration SourceDremioUpdate `json:"configuration"`
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
}

func (o *SourceDremioPutRequest) GetConfiguration() SourceDremioUpdate {
	if o == nil {
		return SourceDremioUpdate{}
	}
	return o.Configuration
}

func (o *SourceDremioPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceDremioPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
