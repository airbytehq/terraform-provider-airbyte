// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type DestinationDynamodbPutRequest struct {
	Configuration DestinationDynamodbUpdate `json:"configuration"`
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
}

func (o *DestinationDynamodbPutRequest) GetConfiguration() DestinationDynamodbUpdate {
	if o == nil {
		return DestinationDynamodbUpdate{}
	}
	return o.Configuration
}

func (o *DestinationDynamodbPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationDynamodbPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
