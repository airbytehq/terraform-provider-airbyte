// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceWebScrapperCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string           `json:"definitionId,omitempty"`
	WorkspaceID   string            `json:"workspaceId"`
	Configuration SourceWebScrapper `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceWebScrapperCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceWebScrapperCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceWebScrapperCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceWebScrapperCreateRequest) GetConfiguration() SourceWebScrapper {
	if o == nil {
		return SourceWebScrapper{}
	}
	return o.Configuration
}

func (o *SourceWebScrapperCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
