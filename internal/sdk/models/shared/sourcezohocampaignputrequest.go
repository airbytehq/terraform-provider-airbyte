// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceZohoCampaignPutRequest struct {
	Name          string                   `json:"name"`
	WorkspaceID   string                   `json:"workspaceId"`
	Configuration SourceZohoCampaignUpdate `json:"configuration"`
}

func (o *SourceZohoCampaignPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceZohoCampaignPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceZohoCampaignPutRequest) GetConfiguration() SourceZohoCampaignUpdate {
	if o == nil {
		return SourceZohoCampaignUpdate{}
	}
	return o.Configuration
}
