// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceNorthpassLmsCreateRequest struct {
	Configuration SourceNorthpassLms `json:"configuration"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID *string `json:"definitionId,omitempty"`
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID    *string `json:"secretId,omitempty"`
	WorkspaceID string  `json:"workspaceId"`
}

func (o *SourceNorthpassLmsCreateRequest) GetConfiguration() SourceNorthpassLms {
	if o == nil {
		return SourceNorthpassLms{}
	}
	return o.Configuration
}

func (o *SourceNorthpassLmsCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceNorthpassLmsCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceNorthpassLmsCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}

func (o *SourceNorthpassLmsCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
