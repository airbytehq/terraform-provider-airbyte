// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceMailjetMailUpdate struct {
	// Your API Key. See <a href="https://dev.mailjet.com/email/guides/#authentication">here</a>.
	APIKey string `json:"api_key"`
	// Your API Secret Key. See <a href="https://dev.mailjet.com/email/guides/#authentication">here</a>.
	APIKeySecret string `json:"api_key_secret"`
}

func (o *SourceMailjetMailUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceMailjetMailUpdate) GetAPIKeySecret() string {
	if o == nil {
		return ""
	}
	return o.APIKeySecret
}
