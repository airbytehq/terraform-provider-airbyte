// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceEConomicUpdate struct {
	// Token that identifies the grant issued by an agreement, allowing your app to access data. Obtain it from your e-conomic account settings.
	AgreementGrantToken string `json:"agreement_grant_token"`
	// Your private token that identifies your app. Find it in your e-conomic account settings.
	AppSecretToken string `json:"app_secret_token"`
}

func (o *SourceEConomicUpdate) GetAgreementGrantToken() string {
	if o == nil {
		return ""
	}
	return o.AgreementGrantToken
}

func (o *SourceEConomicUpdate) GetAppSecretToken() string {
	if o == nil {
		return ""
	}
	return o.AppSecretToken
}
