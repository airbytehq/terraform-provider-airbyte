// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceAzureTablePutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceAzureTableUpdate `json:"configuration"`
}

func (o *SourceAzureTablePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAzureTablePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceAzureTablePutRequest) GetConfiguration() SourceAzureTableUpdate {
	if o == nil {
		return SourceAzureTableUpdate{}
	}
	return o.Configuration
}
