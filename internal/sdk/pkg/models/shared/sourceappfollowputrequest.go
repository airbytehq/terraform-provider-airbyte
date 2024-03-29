// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceAppfollowPutRequest struct {
	Configuration SourceAppfollowUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourceAppfollowPutRequest) GetConfiguration() SourceAppfollowUpdate {
	if o == nil {
		return SourceAppfollowUpdate{}
	}
	return o.Configuration
}

func (o *SourceAppfollowPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAppfollowPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
