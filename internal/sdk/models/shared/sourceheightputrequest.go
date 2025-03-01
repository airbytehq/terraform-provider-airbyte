// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceHeightPutRequest struct {
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceHeightUpdate `json:"configuration"`
}

func (o *SourceHeightPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceHeightPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceHeightPutRequest) GetConfiguration() SourceHeightUpdate {
	if o == nil {
		return SourceHeightUpdate{}
	}
	return o.Configuration
}
