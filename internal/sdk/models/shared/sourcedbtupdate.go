// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceDbtUpdate struct {
	AccountID string `json:"account_id"`
	APIKey2   string `json:"api_key_2"`
}

func (o *SourceDbtUpdate) GetAccountID() string {
	if o == nil {
		return ""
	}
	return o.AccountID
}

func (o *SourceDbtUpdate) GetAPIKey2() string {
	if o == nil {
		return ""
	}
	return o.APIKey2
}
