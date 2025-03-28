// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSimplecastCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string          `json:"definitionId,omitempty"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceSimplecast `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceSimplecastCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSimplecastCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceSimplecastCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSimplecastCreateRequest) GetConfiguration() SourceSimplecast {
	if o == nil {
		return SourceSimplecast{}
	}
	return o.Configuration
}

func (o *SourceSimplecastCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
