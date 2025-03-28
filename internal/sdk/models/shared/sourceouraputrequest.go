// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOuraPutRequest struct {
	Name          string           `json:"name"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceOuraUpdate `json:"configuration"`
}

func (o *SourceOuraPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOuraPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOuraPutRequest) GetConfiguration() SourceOuraUpdate {
	if o == nil {
		return SourceOuraUpdate{}
	}
	return o.Configuration
}
