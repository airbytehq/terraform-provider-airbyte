// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSonarCloudPutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceSonarCloudUpdate `json:"configuration"`
}

func (o *SourceSonarCloudPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSonarCloudPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSonarCloudPutRequest) GetConfiguration() SourceSonarCloudUpdate {
	if o == nil {
		return SourceSonarCloudUpdate{}
	}
	return o.Configuration
}
