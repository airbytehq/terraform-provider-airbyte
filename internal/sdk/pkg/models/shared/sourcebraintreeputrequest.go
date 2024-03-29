// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceBraintreePutRequest struct {
	Configuration SourceBraintreeUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourceBraintreePutRequest) GetConfiguration() SourceBraintreeUpdate {
	if o == nil {
		return SourceBraintreeUpdate{}
	}
	return o.Configuration
}

func (o *SourceBraintreePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceBraintreePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
