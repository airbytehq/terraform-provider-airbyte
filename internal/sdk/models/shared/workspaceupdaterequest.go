// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type WorkspaceUpdateRequest struct {
	// Name of the workspace
	Name string `json:"name"`
}

func (o *WorkspaceUpdateRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}