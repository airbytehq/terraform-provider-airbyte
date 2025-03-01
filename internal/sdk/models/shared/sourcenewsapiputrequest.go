// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceNewsAPIPutRequest struct {
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration SourceNewsAPIUpdate `json:"configuration"`
}

func (o *SourceNewsAPIPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceNewsAPIPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceNewsAPIPutRequest) GetConfiguration() SourceNewsAPIUpdate {
	if o == nil {
		return SourceNewsAPIUpdate{}
	}
	return o.Configuration
}
