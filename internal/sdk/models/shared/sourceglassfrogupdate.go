// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceGlassfrogUpdate struct {
	// API key provided by Glassfrog
	APIKey string `json:"api_key"`
}

func (o *SourceGlassfrogUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}
