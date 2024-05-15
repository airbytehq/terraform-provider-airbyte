// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceAzureTablePutRequest struct {
	Configuration SourceAzureTableUpdate `json:"configuration"`
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
}

func (o *SourceAzureTablePutRequest) GetConfiguration() SourceAzureTableUpdate {
	if o == nil {
		return SourceAzureTableUpdate{}
	}
	return o.Configuration
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