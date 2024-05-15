// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceRecruiteePutRequest struct {
	Configuration SourceRecruiteeUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourceRecruiteePutRequest) GetConfiguration() SourceRecruiteeUpdate {
	if o == nil {
		return SourceRecruiteeUpdate{}
	}
	return o.Configuration
}

func (o *SourceRecruiteePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceRecruiteePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}