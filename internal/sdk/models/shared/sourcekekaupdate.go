// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceKekaUpdate struct {
	APIKey string `json:"api_key"`
	// Your client identifier for authentication.
	ClientID string `json:"client_id"`
	// Your client secret for secure authentication.
	ClientSecret string `json:"client_secret"`
	GrantType    string `json:"grant_type"`
	Scope        string `json:"scope"`
}

func (o *SourceKekaUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceKekaUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceKekaUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceKekaUpdate) GetGrantType() string {
	if o == nil {
		return ""
	}
	return o.GrantType
}

func (o *SourceKekaUpdate) GetScope() string {
	if o == nil {
		return ""
	}
	return o.Scope
}
