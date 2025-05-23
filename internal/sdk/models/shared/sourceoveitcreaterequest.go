// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOveitCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string     `json:"definitionId,omitempty"`
	WorkspaceID   string      `json:"workspaceId"`
	Configuration SourceOveit `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceOveitCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOveitCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceOveitCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOveitCreateRequest) GetConfiguration() SourceOveit {
	if o == nil {
		return SourceOveit{}
	}
	return o.Configuration
}

func (o *SourceOveitCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
