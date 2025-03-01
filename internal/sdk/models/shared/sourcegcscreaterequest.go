// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGcsCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID *string `json:"definitionId,omitempty"`
	WorkspaceID  string  `json:"workspaceId"`
	// NOTE: When this Spec is changed, legacy_config_transformer.py must also be
	// modified to uptake the changes because it is responsible for converting
	// legacy GCS configs into file based configs using the File-Based CDK.
	Configuration SourceGcs `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceGcsCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGcsCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceGcsCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceGcsCreateRequest) GetConfiguration() SourceGcs {
	if o == nil {
		return SourceGcs{}
	}
	return o.Configuration
}

func (o *SourceGcsCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
