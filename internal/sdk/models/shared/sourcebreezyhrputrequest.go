// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceBreezyHrPutRequest struct {
	Configuration SourceBreezyHrUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceBreezyHrPutRequest) GetConfiguration() SourceBreezyHrUpdate {
	if o == nil {
		return SourceBreezyHrUpdate{}
	}
	return o.Configuration
}

func (o *SourceBreezyHrPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceBreezyHrPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}