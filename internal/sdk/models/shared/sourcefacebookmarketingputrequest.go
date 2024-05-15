// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceFacebookMarketingPutRequest struct {
	Configuration SourceFacebookMarketingUpdate `json:"configuration"`
	Name          string                        `json:"name"`
	WorkspaceID   string                        `json:"workspaceId"`
}

func (o *SourceFacebookMarketingPutRequest) GetConfiguration() SourceFacebookMarketingUpdate {
	if o == nil {
		return SourceFacebookMarketingUpdate{}
	}
	return o.Configuration
}

func (o *SourceFacebookMarketingPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceFacebookMarketingPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}