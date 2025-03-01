// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceShipstationPutRequest struct {
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourceShipstationUpdate `json:"configuration"`
}

func (o *SourceShipstationPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceShipstationPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceShipstationPutRequest) GetConfiguration() SourceShipstationUpdate {
	if o == nil {
		return SourceShipstationUpdate{}
	}
	return o.Configuration
}
