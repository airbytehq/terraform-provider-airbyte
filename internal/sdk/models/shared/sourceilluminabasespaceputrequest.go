// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceIlluminaBasespacePutRequest struct {
	Name          string                        `json:"name"`
	WorkspaceID   string                        `json:"workspaceId"`
	Configuration SourceIlluminaBasespaceUpdate `json:"configuration"`
}

func (o *SourceIlluminaBasespacePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceIlluminaBasespacePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceIlluminaBasespacePutRequest) GetConfiguration() SourceIlluminaBasespaceUpdate {
	if o == nil {
		return SourceIlluminaBasespaceUpdate{}
	}
	return o.Configuration
}
