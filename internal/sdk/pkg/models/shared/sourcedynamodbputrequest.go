// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceDynamodbPutRequest struct {
	Configuration SourceDynamodbUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceDynamodbPutRequest) GetConfiguration() SourceDynamodbUpdate {
	if o == nil {
		return SourceDynamodbUpdate{}
	}
	return o.Configuration
}

func (o *SourceDynamodbPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceDynamodbPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
