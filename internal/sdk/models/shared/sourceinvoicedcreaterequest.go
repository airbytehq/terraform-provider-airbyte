// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceInvoicedCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string        `json:"definitionId,omitempty"`
	WorkspaceID   string         `json:"workspaceId"`
	Configuration SourceInvoiced `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceInvoicedCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceInvoicedCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceInvoicedCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceInvoicedCreateRequest) GetConfiguration() SourceInvoiced {
	if o == nil {
		return SourceInvoiced{}
	}
	return o.Configuration
}

func (o *SourceInvoicedCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
