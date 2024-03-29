// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceApifyDatasetPutRequest struct {
	Configuration SourceApifyDatasetUpdate `json:"configuration"`
	Name          string                   `json:"name"`
	WorkspaceID   string                   `json:"workspaceId"`
}

func (o *SourceApifyDatasetPutRequest) GetConfiguration() SourceApifyDatasetUpdate {
	if o == nil {
		return SourceApifyDatasetUpdate{}
	}
	return o.Configuration
}

func (o *SourceApifyDatasetPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceApifyDatasetPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
