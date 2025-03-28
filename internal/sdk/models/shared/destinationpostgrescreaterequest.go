// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationPostgresCreateRequest struct {
	// Name of the destination e.g. dev-mysql-instance.
	Name string `json:"name"`
	// The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided.
	DefinitionID  *string             `json:"definitionId,omitempty"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration DestinationPostgres `json:"configuration"`
}

func (o *DestinationPostgresCreateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationPostgresCreateRequest) GetDefinitionID() *string {
	if o == nil {
		return nil
	}
	return o.DefinitionID
}

func (o *DestinationPostgresCreateRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationPostgresCreateRequest) GetConfiguration() DestinationPostgres {
	if o == nil {
		return DestinationPostgres{}
	}
	return o.Configuration
}
