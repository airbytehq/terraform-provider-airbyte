// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceSnapchatMarketingCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string                 `json:"definitionId,omitempty"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourceSnapchatMarketing `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceSnapchatMarketingCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSnapchatMarketingCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceSnapchatMarketingCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceSnapchatMarketingCreateRequest) GetConfiguration() SourceSnapchatMarketing {
	if o == nil {
		return SourceSnapchatMarketing{}
	}
	return o.Configuration
}

func (o *SourceSnapchatMarketingCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
