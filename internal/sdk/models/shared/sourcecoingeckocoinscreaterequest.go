// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCoingeckoCoinsCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string              `json:"definitionId,omitempty"`
	WorkspaceID   string               `json:"workspaceId"`
	Configuration SourceCoingeckoCoins `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceCoingeckoCoinsCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCoingeckoCoinsCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceCoingeckoCoinsCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCoingeckoCoinsCreateRequest) GetConfiguration() SourceCoingeckoCoins {
	if o == nil {
		return SourceCoingeckoCoins{}
	}
	return o.Configuration
}

func (o *SourceCoingeckoCoinsCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
