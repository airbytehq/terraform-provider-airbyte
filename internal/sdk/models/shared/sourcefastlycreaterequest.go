// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceFastlyCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string      `json:"definitionId,omitempty"`
	WorkspaceID   string       `json:"workspaceId"`
	Configuration SourceFastly `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceFastlyCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFastlyCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceFastlyCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceFastlyCreateRequest) GetConfiguration() SourceFastly {
	if o == nil {
		return SourceFastly{}
	}
	return o.Configuration
}

func (o *SourceFastlyCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
