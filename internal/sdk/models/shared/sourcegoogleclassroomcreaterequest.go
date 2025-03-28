// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGoogleClassroomCreateRequest struct {
	// Name of the source e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
	DefinitionID  *string               `json:"definitionId,omitempty"`
	WorkspaceID   string                `json:"workspaceId"`
	Configuration SourceGoogleClassroom `json:"configuration"`
	// Optional secretID obtained through the public API OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
}

func (o *SourceGoogleClassroomCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceGoogleClassroomCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *SourceGoogleClassroomCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceGoogleClassroomCreateRequest) GetConfiguration() SourceGoogleClassroom {
	if o == nil {
		return SourceGoogleClassroom{}
	}
	return o.Configuration
}

func (o *SourceGoogleClassroomCreateRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}
