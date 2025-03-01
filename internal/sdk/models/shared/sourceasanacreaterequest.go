// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceAsanaCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string     `json:"definitionId,omitempty"`
	WorkspaceID   string      `json:"workspaceId"`
	Configuration SourceAsana `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceAsanaCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAsanaCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceAsanaCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceAsanaCreateRequest) GetConfiguration() SourceAsana {
	if o == nil {
		return SourceAsana{}
	}
	return o.Configuration
}

func (o *SourceAsanaCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
