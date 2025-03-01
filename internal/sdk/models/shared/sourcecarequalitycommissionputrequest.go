// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCareQualityCommissionPutRequest struct {
	Name          string                            `json:"name"`
	WorkspaceID   string                            `json:"workspaceId"`
	Configuration SourceCareQualityCommissionUpdate `json:"configuration"`
}

func (o *SourceCareQualityCommissionPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCareQualityCommissionPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCareQualityCommissionPutRequest) GetConfiguration() SourceCareQualityCommissionUpdate {
	if o == nil {
		return SourceCareQualityCommissionUpdate{}
	}
	return o.Configuration
}
