// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceCoinAPIPutRequest struct {
	Configuration SourceCoinAPIUpdate `json:"configuration"`
	Name          string              `json:"name"`
	WorkspaceID   string              `json:"workspaceId"`
}

func (o *SourceCoinAPIPutRequest) GetConfiguration() SourceCoinAPIUpdate {
	if o == nil {
		return SourceCoinAPIUpdate{}
	}
	return o.Configuration
}

func (o *SourceCoinAPIPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCoinAPIPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
