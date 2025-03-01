// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceHardcodedRecordsCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string                `json:"definitionId,omitempty"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceHardcodedRecords `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceHardcodedRecordsCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceHardcodedRecordsCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceHardcodedRecordsCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceHardcodedRecordsCreateRequest) GetConfiguration() SourceHardcodedRecords {
	if o == nil {
		return SourceHardcodedRecords{}
	}
	return o.Configuration
}

func (o *SourceHardcodedRecordsCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
