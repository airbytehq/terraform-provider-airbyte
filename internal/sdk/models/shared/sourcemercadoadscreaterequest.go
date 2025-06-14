// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMercadoAdsCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string          `json:"definitionId,omitempty"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceMercadoAds `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceMercadoAdsCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceMercadoAdsCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceMercadoAdsCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceMercadoAdsCreateRequest) GetConfiguration() SourceMercadoAds {
	if o == nil {
		return SourceMercadoAds{}
	}
	return o.Configuration
}

func (o *SourceMercadoAdsCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
