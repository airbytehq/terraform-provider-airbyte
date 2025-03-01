// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGoogleSearchConsolePutRequest struct {
	Name          string                          `json:"name"`
	WorkspaceID   string                          `json:"workspaceId"`
	Configuration SourceGoogleSearchConsoleUpdate `json:"configuration"`
}

func (o *SourceGoogleSearchConsolePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGoogleSearchConsolePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceGoogleSearchConsolePutRequest) GetConfiguration() SourceGoogleSearchConsoleUpdate {
	if o == nil {
		return SourceGoogleSearchConsoleUpdate{}
	}
	return o.Configuration
}
