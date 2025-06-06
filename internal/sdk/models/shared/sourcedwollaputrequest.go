// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceDwollaPutRequest struct {
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceDwollaUpdate `json:"configuration"`
}

func (o *SourceDwollaPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceDwollaPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceDwollaPutRequest) GetConfiguration() SourceDwollaUpdate {
	if o == nil {
		return SourceDwollaUpdate{}
	}
	return o.Configuration
}
