// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSmartsheetsPutRequest struct {
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourceSmartsheetsUpdate `json:"configuration"`
}

func (o *SourceSmartsheetsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSmartsheetsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSmartsheetsPutRequest) GetConfiguration() SourceSmartsheetsUpdate {
	if o == nil {
		return SourceSmartsheetsUpdate{}
	}
	return o.Configuration
}
