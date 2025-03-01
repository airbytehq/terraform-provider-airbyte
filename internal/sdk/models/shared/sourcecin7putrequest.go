// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCin7PutRequest struct {
	Name          string           `json:"name"`
	WorkspaceID   string           `json:"workspaceId"`
	Configuration SourceCin7Update `json:"configuration"`
}

func (o *SourceCin7PutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceCin7PutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *SourceCin7PutRequest) GetConfiguration() SourceCin7Update {
	if o == nil {
		return SourceCin7Update{}
	}
	return o.Configuration
}
