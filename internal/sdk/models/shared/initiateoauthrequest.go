// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type InitiateOauthRequest struct {
	// The name of the source to authenticate to. Deprecated - use sourceType instead.
	Name *string `json:"name,omitempty"`
	// The name of the source to authenticate to
	SourceType *string `json:"sourceType,omitempty"`
	// The URL to redirect the user to with the OAuth secret stored in the secret_id query string parameter after authentication is complete.
	RedirectURL string `json:"redirectUrl"`
	// The workspace to create the secret and eventually the full source.
	WorkspaceID string `json:"workspaceId"`
	// The values required to configure OAuth flows. The schema for this must match the `OAuthConfigSpecification.oauthUserInputFromConnectorConfigSpecification` schema.
	OAuthInputConfiguration any `json:"oAuthInputConfiguration,omitempty"`
}

func (o *InitiateOauthRequest) GetName() *string {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *InitiateOauthRequest) GetSourceType() *string {
	if o == nil {
		return nil
	}
	return o.SourceType
}

func (o *InitiateOauthRequest) GetRedirectURL() string {
	if o == nil {
		return ""
	}
	return o.RedirectURL
}

func (o *InitiateOauthRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *InitiateOauthRequest) GetOAuthInputConfiguration() any {
	if o == nil {
		return nil
	}
	return o.OAuthInputConfiguration
}
