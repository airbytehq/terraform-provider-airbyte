// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceApifyDatasetCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string            `json:"definitionId,omitempty"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceApifyDataset `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceApifyDatasetCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceApifyDatasetCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceApifyDatasetCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceApifyDatasetCreateRequest) GetConfiguration() SourceApifyDataset {
	if o == nil {
		return SourceApifyDataset{}
	}
	return o.Configuration
}

func (o *SourceApifyDatasetCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
