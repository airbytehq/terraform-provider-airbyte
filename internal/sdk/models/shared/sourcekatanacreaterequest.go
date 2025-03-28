// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceKatanaCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string      `json:"definitionId,omitempty"`
	WorkspaceID   string       `json:"workspaceId"`
	Configuration SourceKatana `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceKatanaCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceKatanaCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceKatanaCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceKatanaCreateRequest) GetConfiguration() SourceKatana {
	if o == nil {
		return SourceKatana{}
	}
	return o.Configuration
}

func (o *SourceKatanaCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
