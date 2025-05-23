// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceZapierSupportedStorageUpdate struct {
	// Secret key supplied by zapier
	Secret string `json:"secret"`
}

func (o *SourceZapierSupportedStorageUpdate) GetSecret() string {
	if o == nil {
		return ""
	}
	return o.Secret
}
