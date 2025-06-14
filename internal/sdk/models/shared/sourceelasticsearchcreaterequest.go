// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceElasticsearchCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string             `json:"definitionId,omitempty"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration SourceElasticsearch `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceElasticsearchCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceElasticsearchCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceElasticsearchCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceElasticsearchCreateRequest) GetConfiguration() SourceElasticsearch {
	if o == nil {
		return SourceElasticsearch{}
	}
	return o.Configuration
}

func (o *SourceElasticsearchCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
