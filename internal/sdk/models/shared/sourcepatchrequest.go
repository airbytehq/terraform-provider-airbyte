// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourcePatchRequest struct {
	Name        *string `json:"name,omitempty"`
	WorkspaceID *string `json:"workspaceId,omitempty"`
	// The values required to configure the source.
	Configuration any `json:"configuration,omitempty"`
	// Optional secretID obtained through the  OAuth redirect flow.
	SecretID *string `json:"secretId,omitempty"`
	// actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level.
	ResourceAllocation *ScopedResourceRequirements `json:"resourceAllocation,omitempty"`
}

func (o *SourcePatchRequest) GetName() *string {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *SourcePatchRequest) GetWorkspaceID() *string {
	if o == nil {
		return nil
	}
	return o.WorkspaceID
}

func (o *SourcePatchRequest) GetConfiguration() any {
	if o == nil {
		return nil
	}
	return o.Configuration
}

func (o *SourcePatchRequest) GetSecretID() *string {
	if o == nil {
		return nil
	}
	return o.SecretID
}

func (o *SourcePatchRequest) GetResourceAllocation() *ScopedResourceRequirements {
	if o == nil {
		return nil
	}
	return o.ResourceAllocation
}
