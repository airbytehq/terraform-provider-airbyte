// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceGoogleSearchConsolePutRequest struct {
	Configuration SourceGoogleSearchConsoleUpdate `json:"configuration"`
	Name          string                          `json:"name"`
	WorkspaceID   string                          `json:"workspaceId"`
}

func (o *SourceGoogleSearchConsolePutRequest) GetConfiguration() SourceGoogleSearchConsoleUpdate {
	if o == nil {
		return SourceGoogleSearchConsoleUpdate{}
	}
	return o.Configuration
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
