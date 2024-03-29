// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceAmazonAdsPutRequest struct {
	Configuration SourceAmazonAdsUpdate `json:"configuration"`
	Name          string                `json:"name"`
	WorkspaceID   string                `json:"workspaceId"`
}

func (o *SourceAmazonAdsPutRequest) GetConfiguration() SourceAmazonAdsUpdate {
	if o == nil {
		return SourceAmazonAdsUpdate{}
	}
	return o.Configuration
}

func (o *SourceAmazonAdsPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceAmazonAdsPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
