// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceShortioPutRequest struct {
	Configuration SourceShortioUpdate `json:"configuration"`
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
}

func (o *SourceShortioPutRequest) GetConfiguration() SourceShortioUpdate {
	if o == nil {
		return SourceShortioUpdate{}
	}
	return o.Configuration
}

func (o *SourceShortioPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceShortioPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
