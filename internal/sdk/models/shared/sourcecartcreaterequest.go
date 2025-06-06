// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCartCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string    `json:"definitionId,omitempty"`
	WorkspaceID   string     `json:"workspaceId"`
	Configuration SourceCart `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceCartCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCartCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceCartCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCartCreateRequest) GetConfiguration() SourceCart {
	if o == nil {
		return SourceCart{}
	}
	return o.Configuration
}

func (o *SourceCartCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
