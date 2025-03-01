// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceWasabiStatsAPIPutRequest struct {
	Name          string                     `json:"name"`
	WorkspaceID   string                     `json:"workspaceId"`
	Configuration SourceWasabiStatsAPIUpdate `json:"configuration"`
}

func (o *SourceWasabiStatsAPIPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceWasabiStatsAPIPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceWasabiStatsAPIPutRequest) GetConfiguration() SourceWasabiStatsAPIUpdate {
	if o == nil {
		return SourceWasabiStatsAPIUpdate{}
	}
	return o.Configuration
}
