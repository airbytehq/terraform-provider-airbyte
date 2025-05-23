// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceOutbrainAmplifyPutRequest struct {
	Name          string                      `json:"name"`
	WorkspaceID   string                      `json:"workspaceId"`
	Configuration SourceOutbrainAmplifyUpdate `json:"configuration"`
}

func (o *SourceOutbrainAmplifyPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOutbrainAmplifyPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceOutbrainAmplifyPutRequest) GetConfiguration() SourceOutbrainAmplifyUpdate {
	if o == nil {
		return SourceOutbrainAmplifyUpdate{}
	}
	return o.Configuration
}
