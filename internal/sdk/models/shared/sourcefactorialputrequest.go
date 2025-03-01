// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceFactorialPutRequest struct {
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
	Configuration SourceFactorialUpdate `json:"configuration"`
}

func (o *SourceFactorialPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFactorialPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceFactorialPutRequest) GetConfiguration() SourceFactorialUpdate {
	if o == nil {
		return SourceFactorialUpdate{}
	}
	return o.Configuration
}
