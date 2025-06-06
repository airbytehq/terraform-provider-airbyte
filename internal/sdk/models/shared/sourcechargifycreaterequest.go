// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceChargifyCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string        `json:"definitionId,omitempty"`
	WorkspaceID   string         `json:"workspaceId"`
	Configuration SourceChargify `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceChargifyCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceChargifyCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceChargifyCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceChargifyCreateRequest) GetConfiguration() SourceChargify {
	if o == nil {
		return SourceChargify{}
	}
	return o.Configuration
}

func (o *SourceChargifyCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
