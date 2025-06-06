// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourcePaypalTransactionCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string                 `json:"definitionId,omitempty"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourcePaypalTransaction `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourcePaypalTransactionCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourcePaypalTransactionCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourcePaypalTransactionCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourcePaypalTransactionCreateRequest) GetConfiguration() SourcePaypalTransaction {
	if o == nil {
		return SourcePaypalTransaction{}
	}
	return o.Configuration
}

func (o *SourcePaypalTransactionCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
