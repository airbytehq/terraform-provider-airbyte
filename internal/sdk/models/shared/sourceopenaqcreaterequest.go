// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOpenaqCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string      `json:"definitionId,omitempty"`
	WorkspaceID   string       `json:"workspaceId"`
	Configuration SourceOpenaq `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceOpenaqCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOpenaqCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceOpenaqCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOpenaqCreateRequest) GetConfiguration() SourceOpenaq {
	if o == nil {
		return SourceOpenaq{}
	}
	return o.Configuration
}

func (o *SourceOpenaqCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
