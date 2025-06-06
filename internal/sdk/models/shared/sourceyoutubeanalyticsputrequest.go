// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceYoutubeAnalyticsPutRequest struct {
	Name          string                       `json:"name"`
	WorkspaceID   string                       `json:"workspaceId"`
	Configuration SourceYoutubeAnalyticsUpdate `json:"configuration"`
}

func (o *SourceYoutubeAnalyticsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceYoutubeAnalyticsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceYoutubeAnalyticsPutRequest) GetConfiguration() SourceYoutubeAnalyticsUpdate {
	if o == nil {
		return SourceYoutubeAnalyticsUpdate{}
	}
	return o.Configuration
}
