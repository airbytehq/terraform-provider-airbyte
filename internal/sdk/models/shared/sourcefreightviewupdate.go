// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceFreightviewUpdate struct {
	ClientID     string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
}

func (o *SourceFreightviewUpdate) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceFreightviewUpdate) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}
