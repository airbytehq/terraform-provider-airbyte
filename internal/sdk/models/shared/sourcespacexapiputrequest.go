// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSpacexAPIPutRequest struct {
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
	Configuration SourceSpacexAPIUpdate `json:"configuration"`
}

func (o *SourceSpacexAPIPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSpacexAPIPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSpacexAPIPutRequest) GetConfiguration() SourceSpacexAPIUpdate {
	if o == nil {
		return SourceSpacexAPIUpdate{}
	}
	return o.Configuration
}
