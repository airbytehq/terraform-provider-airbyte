// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourcePostmarkappPutRequest struct {
	Configuration SourcePostmarkappUpdate `json:"configuration"`
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
}

func (o *SourcePostmarkappPutRequest) GetConfiguration() SourcePostmarkappUpdate {
	if o == nil {
		return SourcePostmarkappUpdate{}
	}
	return o.Configuration
}

func (o *SourcePostmarkappPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourcePostmarkappPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
