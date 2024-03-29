// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceYoutubeAnalyticsPutRequest struct {
	Configuration SourceYoutubeAnalyticsUpdate `json:"configuration"`
	Name          string                       `json:"name"`
	WorkspaceID   string                       `json:"workspaceId"`
}

func (o *SourceYoutubeAnalyticsPutRequest) GetConfiguration() SourceYoutubeAnalyticsUpdate {
	if o == nil {
		return SourceYoutubeAnalyticsUpdate{}
	}
	return o.Configuration
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
