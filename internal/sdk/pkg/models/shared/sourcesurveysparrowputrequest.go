// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceSurveySparrowPutRequest struct {
	Configuration SourceSurveySparrowUpdate `json:"configuration"`
	Name          string                    `json:"name"`
	WorkspaceID   string                    `json:"workspaceId"`
}

func (o *SourceSurveySparrowPutRequest) GetConfiguration() SourceSurveySparrowUpdate {
	if o == nil {
		return SourceSurveySparrowUpdate{}
	}
	return o.Configuration
}

func (o *SourceSurveySparrowPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceSurveySparrowPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
