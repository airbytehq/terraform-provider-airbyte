// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceJamfProCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string       `json:"definitionId,omitempty"`
	WorkspaceID   string        `json:"workspaceId"`
	Configuration SourceJamfPro `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceJamfProCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceJamfProCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceJamfProCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceJamfProCreateRequest) GetConfiguration() SourceJamfPro {
	if o == nil {
		return SourceJamfPro{}
	}
	return o.Configuration
}

func (o *SourceJamfProCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
