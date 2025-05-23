// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationTeradataCreateRequest struct {
	// Name of the destination e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided.
	DefinitionID  *string             `json:"definitionId,omitempty"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration DestinationTeradata `json:"configuration"`
}

func (o *DestinationTeradataCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationTeradataCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *DestinationTeradataCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationTeradataCreateRequest) GetConfiguration() DestinationTeradata {
	if o == nil {
		return DestinationTeradata{}
	}
	return o.Configuration
}
