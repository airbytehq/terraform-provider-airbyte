// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceBugsnagCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string       `json:"definitionId,omitempty"`
	WorkspaceID   string        `json:"workspaceId"`
	Configuration SourceBugsnag `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceBugsnagCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceBugsnagCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceBugsnagCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceBugsnagCreateRequest) GetConfiguration() SourceBugsnag {
	if o == nil {
		return SourceBugsnag{}
	}
	return o.Configuration
}

func (o *SourceBugsnagCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
