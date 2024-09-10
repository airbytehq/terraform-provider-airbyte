// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceHardcodedRecordsPutRequest struct {
	Configuration SourceHardcodedRecordsUpdate `json:"configuration"`
	Name          string                       `json:"name"`
	WorkspaceID   string                       `json:"workspaceId"`
}

func (o *SourceHardcodedRecordsPutRequest) GetConfiguration() SourceHardcodedRecordsUpdate {
	if o == nil {
		return SourceHardcodedRecordsUpdate{}
	}
	return o.Configuration
}

func (o *SourceHardcodedRecordsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceHardcodedRecordsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}