// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceCalendlyPutRequest struct {
	Configuration SourceCalendlyUpdate `json:"configuration"`
	Name          string               `json:"name"`
	WorkspaceID   string               `json:"workspaceId"`
}

func (o *SourceCalendlyPutRequest) GetConfiguration() SourceCalendlyUpdate {
	if o == nil {
		return SourceCalendlyUpdate{}
	}
	return o.Configuration
}

func (o *SourceCalendlyPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCalendlyPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}