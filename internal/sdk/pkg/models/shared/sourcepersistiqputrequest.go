// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourcePersistiqPutRequest struct {
	Configuration SourcePersistiqUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourcePersistiqPutRequest) GetConfiguration() SourcePersistiqUpdate {
	if o == nil {
		return SourcePersistiqUpdate{}
	}
	return o.Configuration
}

func (o *SourcePersistiqPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourcePersistiqPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
