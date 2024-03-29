// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceGoogleDrivePutRequest struct {
	// Used during spec; allows the developer to configure the cloud provider specific options
	// that are needed when users configure a file-based source.
	Configuration SourceGoogleDriveUpdate `json:"configuration"`
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
}

func (o *SourceGoogleDrivePutRequest) GetConfiguration() SourceGoogleDriveUpdate {
	if o == nil {
		return SourceGoogleDriveUpdate{}
	}
	return o.Configuration
}

func (o *SourceGoogleDrivePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGoogleDrivePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
