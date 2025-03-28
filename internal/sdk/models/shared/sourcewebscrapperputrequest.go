// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceWebScrapperPutRequest struct {
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourceWebScrapperUpdate `json:"configuration"`
}

func (o *SourceWebScrapperPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceWebScrapperPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceWebScrapperPutRequest) GetConfiguration() SourceWebScrapperUpdate {
	if o == nil {
		return SourceWebScrapperUpdate{}
	}
	return o.Configuration
}
