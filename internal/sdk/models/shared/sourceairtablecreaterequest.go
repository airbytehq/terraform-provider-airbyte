// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceAirtableCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string        `json:"definitionId,omitempty"`
	WorkspaceID   string         `json:"workspaceId"`
	Configuration SourceAirtable `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceAirtableCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAirtableCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceAirtableCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceAirtableCreateRequest) GetConfiguration() SourceAirtable {
	if o == nil {
		return SourceAirtable{}
	}
	return o.Configuration
}

func (o *SourceAirtableCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
