// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourcePayfitPutRequest struct {
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
	Configuration SourcePayfitUpdate `json:"configuration"`
}

func (o *SourcePayfitPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourcePayfitPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourcePayfitPutRequest) GetConfiguration() SourcePayfitUpdate {
	if o == nil {
		return SourcePayfitUpdate{}
	}
	return o.Configuration
}
