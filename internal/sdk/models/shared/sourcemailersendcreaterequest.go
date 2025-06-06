// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMailersendCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string          `json:"definitionId,omitempty"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceMailersend `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceMailersendCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceMailersendCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceMailersendCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceMailersendCreateRequest) GetConfiguration() SourceMailersend {
	if o == nil {
		return SourceMailersend{}
	}
	return o.Configuration
}

func (o *SourceMailersendCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
