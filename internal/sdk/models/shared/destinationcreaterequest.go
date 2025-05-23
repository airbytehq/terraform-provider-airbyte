// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationCreateRequest struct {
	// Name of the destination e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided.
	DefinitionID *string `json:"definitionId,omitempty"`
	WorkspaceID  string  `json:"workspaceId"`
	// The values required to configure the destination.
	Configuration any `json:"configuration"`
	// actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level.
	ResourceAllocation *ScopedResourceRequirements `json:"resourceAllocation,omitempty"`
}

func (o *DestinationCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *DestinationCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationCreateRequest) GetConfiguration() any {
	if o == nil {
		return nil
	}
	return o.Configuration
}

func (o *DestinationCreateRequest) GetResourceAllocation() *ScopedResourceRequirements {
	if o == nil {
		return nil
	}
	return o.ResourceAllocation
}
