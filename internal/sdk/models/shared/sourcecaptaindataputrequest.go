// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCaptainDataPutRequest struct {
	Name          string                  `json:"name"`
	WorkspaceID   string                  `json:"workspaceId"`
	Configuration SourceCaptainDataUpdate `json:"configuration"`
}

func (o *SourceCaptainDataPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCaptainDataPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCaptainDataPutRequest) GetConfiguration() SourceCaptainDataUpdate {
	if o == nil {
		return SourceCaptainDataUpdate{}
	}
	return o.Configuration
}
