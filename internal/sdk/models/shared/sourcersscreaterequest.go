// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceRssCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string   `json:"definitionId,omitempty"`
	WorkspaceID   string    `json:"workspaceId"`
	Configuration SourceRss `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceRssCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceRssCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceRssCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceRssCreateRequest) GetConfiguration() SourceRss {
	if o == nil {
		return SourceRss{}
	}
	return o.Configuration
}

func (o *SourceRssCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
