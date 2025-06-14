// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceCalComUpdate struct {
	// API key to use. Find it at https://cal.com/account
	APIKey string `json:"api_key"`
	OrgID  string `json:"orgId"`
}

func (o *SourceCalComUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceCalComUpdate) GetOrgID() string {
	if o == nil {
		return ""
	}
	return o.OrgID
}
