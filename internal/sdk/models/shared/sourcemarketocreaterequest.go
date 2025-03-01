// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMarketoCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string       `json:"definitionId,omitempty"`
	WorkspaceID   string        `json:"workspaceId"`
	Configuration SourceMarketo `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceMarketoCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceMarketoCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceMarketoCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceMarketoCreateRequest) GetConfiguration() SourceMarketo {
	if o == nil {
		return SourceMarketo{}
	}
	return o.Configuration
}

func (o *SourceMarketoCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
