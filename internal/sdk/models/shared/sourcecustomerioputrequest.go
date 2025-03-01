// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCustomerIoPutRequest struct {
	Name          string                 `json:"name"`
	WorkspaceID   string                 `json:"workspaceId"`
	Configuration SourceCustomerIoUpdate `json:"configuration"`
}

func (o *SourceCustomerIoPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCustomerIoPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCustomerIoPutRequest) GetConfiguration() SourceCustomerIoUpdate {
	if o == nil {
		return SourceCustomerIoUpdate{}
	}
	return o.Configuration
}
