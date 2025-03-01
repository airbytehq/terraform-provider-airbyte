// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOuraCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string    `json:"definitionId,omitempty"`
	WorkspaceID   string     `json:"workspaceId"`
	Configuration SourceOura `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceOuraCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOuraCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceOuraCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOuraCreateRequest) GetConfiguration() SourceOura {
	if o == nil {
		return SourceOura{}
	}
	return o.Configuration
}

func (o *SourceOuraCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
