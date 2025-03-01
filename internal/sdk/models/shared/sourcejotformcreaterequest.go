// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceJotformCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string       `json:"definitionId,omitempty"`
	WorkspaceID   string        `json:"workspaceId"`
	Configuration SourceJotform `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceJotformCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceJotformCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceJotformCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceJotformCreateRequest) GetConfiguration() SourceJotform {
	if o == nil {
		return SourceJotform{}
	}
	return o.Configuration
}

func (o *SourceJotformCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
