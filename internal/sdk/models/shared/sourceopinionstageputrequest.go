// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOpinionStagePutRequest struct {
	Name          string                   `json:"name"`
	WorkspaceID   string                   `json:"workspaceId"`
	Configuration SourceOpinionStageUpdate `json:"configuration"`
}

func (o *SourceOpinionStagePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOpinionStagePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOpinionStagePutRequest) GetConfiguration() SourceOpinionStageUpdate {
	if o == nil {
		return SourceOpinionStageUpdate{}
	}
	return o.Configuration
}
