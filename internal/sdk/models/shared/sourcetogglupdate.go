// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceTogglUpdate struct {
	// Your API Token. See <a href="https://developers.track.toggl.com/docs/authentication">here</a>. The token is case sensitive.
	APIToken string `json:"api_token"`
	// To retrieve time entries created before the given date (inclusive).
	EndDate string `json:"end_date"`
	// Your organization id. See <a href="https://developers.track.toggl.com/docs/organization">here</a>.
	OrganizationID int64 `json:"organization_id"`
	// To retrieve time entries created after the given date (inclusive).
	StartDate string `json:"start_date"`
	// Your workspace id. See <a href="https://developers.track.toggl.com/docs/workspaces">here</a>.
	WorkspaceID int64 `json:"workspace_id"`
}

func (o *SourceTogglUpdate) GetAPIToken() string {
	if o == nil {
		return ""
	}
	return o.APIToken
}

func (o *SourceTogglUpdate) GetEndDate() string {
	if o == nil {
		return ""
	}
	return o.EndDate
}

func (o *SourceTogglUpdate) GetOrganizationID() int64 {
	if o == nil {
		return 0
	}
	return o.OrganizationID
}

func (o *SourceTogglUpdate) GetStartDate() string {
	if o == nil {
		return ""
	}
	return o.StartDate
}

func (o *SourceTogglUpdate) GetWorkspaceID() int64 {
	if o == nil {
		return 0
	}
	return o.WorkspaceID
}
