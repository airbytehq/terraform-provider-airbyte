// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceInstatusUpdate struct {
	// Instatus REST API key
	APIKey string `json:"api_key"`
}

func (o *SourceInstatusUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}
