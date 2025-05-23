// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationYellowbrickCreateRequest struct {
	// Name of the destination e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided.
	DefinitionID  *string                `json:"definitionId,omitempty"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration DestinationYellowbrick `json:"configuration"`
}

func (o *DestinationYellowbrickCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationYellowbrickCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *DestinationYellowbrickCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationYellowbrickCreateRequest) GetConfiguration() DestinationYellowbrick {
	if o == nil {
		return DestinationYellowbrick{}
	}
	return o.Configuration
}
