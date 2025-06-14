// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceNutshellUpdate struct {
	Password *string `json:"password,omitempty"`
	Username string  `json:"username"`
}

func (o *SourceNutshellUpdate) GetPassword() *string {
	if o == nil {
		return nil
	}
	return o.Password
}

func (o *SourceNutshellUpdate) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}
