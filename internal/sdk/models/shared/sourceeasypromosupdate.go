// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceEasypromosUpdate struct {
	BearerToken string `json:"bearer_token"`
}

func (o *SourceEasypromosUpdate) GetBearerToken() string {
	if o == nil {
		return ""
	}
	return o.BearerToken
}
