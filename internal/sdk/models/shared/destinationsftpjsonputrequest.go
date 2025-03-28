// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationSftpJSONPutRequest struct {
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
	Configuration DestinationSftpJSONUpdate `json:"configuration"`
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

func (o *DestinationSftpJSONPutRequest) GetConfiguration() DestinationSftpJSONUpdate {
	if o == nil {
		return DestinationSftpJSONUpdate{}
	}
	return o.Configuration
}
