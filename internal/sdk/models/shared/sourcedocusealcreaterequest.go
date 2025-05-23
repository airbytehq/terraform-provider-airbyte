// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceDocusealCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string        `json:"definitionId,omitempty"`
	WorkspaceID   string         `json:"workspaceId"`
	Configuration SourceDocuseal `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceDocusealCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceDocusealCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceDocusealCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceDocusealCreateRequest) GetConfiguration() SourceDocuseal {
	if o == nil {
		return SourceDocuseal{}
	}
	return o.Configuration
}

func (o *SourceDocusealCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
