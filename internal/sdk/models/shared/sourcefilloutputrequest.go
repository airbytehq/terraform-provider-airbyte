// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceFilloutPutRequest struct {
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration SourceFilloutUpdate `json:"configuration"`
}

func (o *SourceFilloutPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFilloutPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceFilloutPutRequest) GetConfiguration() SourceFilloutUpdate {
	if o == nil {
		return SourceFilloutUpdate{}
	}
	return o.Configuration
}
