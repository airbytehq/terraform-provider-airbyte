// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceEventzillaCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string          `json:"definitionId,omitempty"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceEventzilla `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceEventzillaCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceEventzillaCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceEventzillaCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceEventzillaCreateRequest) GetConfiguration() SourceEventzilla {
	if o == nil {
		return SourceEventzilla{}
	}
	return o.Configuration
}

func (o *SourceEventzillaCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
