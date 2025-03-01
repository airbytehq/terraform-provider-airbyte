// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceReferralheroCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string            `json:"definitionId,omitempty"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourceReferralhero `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceReferralheroCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceReferralheroCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceReferralheroCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceReferralheroCreateRequest) GetConfiguration() SourceReferralhero {
	if o == nil {
		return SourceReferralhero{}
	}
	return o.Configuration
}

func (o *SourceReferralheroCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
