// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type DestinationRedshiftPutRequest struct {
	Configuration DestinationRedshiftUpdate `json:"configuration"`
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
}

func (o *DestinationRedshiftPutRequest) GetConfiguration() DestinationRedshiftUpdate {
	if o == nil {
		return DestinationRedshiftUpdate{}
	}
	return o.Configuration
}

func (o *DestinationRedshiftPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationRedshiftPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
