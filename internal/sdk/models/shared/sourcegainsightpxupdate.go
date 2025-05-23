// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGainsightPxUpdate struct {
	// The Aptrinsic API Key which is recieved from the dashboard settings (ref - https://app.aptrinsic.com/settings/api-keys)
	APIKey string `json:"api_key"`
}

func (o *SourceGainsightPxUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}
