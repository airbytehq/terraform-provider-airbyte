// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceShortioCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string       `json:"definitionId,omitempty"`
	WorkspaceID   string        `json:"workspaceId"`
	Configuration SourceShortio `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceShortioCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceShortioCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceShortioCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceShortioCreateRequest) GetConfiguration() SourceShortio {
	if o == nil {
		return SourceShortio{}
	}
	return o.Configuration
}

func (o *SourceShortioCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
