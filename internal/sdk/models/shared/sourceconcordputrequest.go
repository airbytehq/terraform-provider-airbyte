// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceConcordPutRequest struct {
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
	Configuration SourceConcordUpdate `json:"configuration"`
}

func (o *SourceConcordPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceConcordPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceConcordPutRequest) GetConfiguration() SourceConcordUpdate {
	if o == nil {
		return SourceConcordUpdate{}
	}
	return o.Configuration
}
