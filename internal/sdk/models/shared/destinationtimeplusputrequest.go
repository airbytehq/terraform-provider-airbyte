// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationTimeplusPutRequest struct {
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
	Configuration DestinationTimeplusUpdate `json:"configuration"`
}

func (o *DestinationTimeplusPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationTimeplusPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationTimeplusPutRequest) GetConfiguration() DestinationTimeplusUpdate {
	if o == nil {
		return DestinationTimeplusUpdate{}
	}
	return o.Configuration
}
