// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGocardlessCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string          `json:"definitionId,omitempty"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceGocardless `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceGocardlessCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGocardlessCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceGocardlessCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceGocardlessCreateRequest) GetConfiguration() SourceGocardless {
	if o == nil {
		return SourceGocardless{}
	}
	return o.Configuration
}

func (o *SourceGocardlessCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
