// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type DestinationSftpJSONPutRequest struct {
	Configuration DestinationSftpJSONUpdate `json:"configuration"`
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
}

func (o *DestinationSftpJSONPutRequest) GetConfiguration() DestinationSftpJSONUpdate {
	if o == nil {
		return DestinationSftpJSONUpdate{}
	}
	return o.Configuration
}

func (o *DestinationSftpJSONPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationSftpJSONPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
