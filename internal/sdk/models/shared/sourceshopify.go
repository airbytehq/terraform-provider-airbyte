// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
)

type SourceShopifySchemasAuthMethod string

const (
	SourceShopifySchemasAuthMethodAPIPassword SourceShopifySchemasAuthMethod = "api_password"
)

func (e SourceShopifySchemasAuthMethod) ToPointer() *SourceShopifySchemasAuthMethod {
	return &e
}

func (e *SourceShopifySchemasAuthMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "api_password":
		*e = SourceShopifySchemasAuthMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceShopifySchemasAuthMethod: %v", v)
	}
}

// SourceShopifyAPIPassword - API Password Auth
type SourceShopifyAPIPassword struct {
	// The API Password for your private application in the `Shopify` store.
	APIPassword string                         `json:"api_password"`
	authMethod  SourceShopifySchemasAuthMethod `const:"api_password" json:"auth_method"`
}

func (s SourceShopifyAPIPassword) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceShopifyAPIPassword) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceShopifyAPIPassword) GetAPIPassword() string {
	if o == nil {
		return ""
	}
	return o.APIPassword
}

func (o *SourceShopifyAPIPassword) GetAuthMethod() SourceShopifySchemasAuthMethod {
	return SourceShopifySchemasAuthMethodAPIPassword
}

type SourceShopifyAuthMethod string

const (
	SourceShopifyAuthMethodOauth20 SourceShopifyAuthMethod = "oauth2.0"
)

func (e SourceShopifyAuthMethod) ToPointer() *SourceShopifyAuthMethod {
	return &e
}

func (e *SourceShopifyAuthMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceShopifyAuthMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceShopifyAuthMethod: %v", v)
	}
}

// SourceShopifyOAuth20 - OAuth2.0
type SourceShopifyOAuth20 struct {
	// The Access Token for making authenticated requests.
	AccessToken *string                 `json:"access_token,omitempty"`
	authMethod  SourceShopifyAuthMethod `const:"oauth2.0" json:"auth_method"`
	// The Client ID of the Shopify developer application.
	ClientID *string `json:"client_id,omitempty"`
	// The Client Secret of the Shopify developer application.
	ClientSecret *string `json:"client_secret,omitempty"`
}

func (s SourceShopifyOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceShopifyOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceShopifyOAuth20) GetAccessToken() *string {
	if o == nil {
		return nil
	}
	return o.AccessToken
}

func (o *SourceShopifyOAuth20) GetAuthMethod() SourceShopifyAuthMethod {
	return SourceShopifyAuthMethodOauth20
}

func (o *SourceShopifyOAuth20) GetClientID() *string {
	if o == nil {
		return nil
	}
	return o.ClientID
}

func (o *SourceShopifyOAuth20) GetClientSecret() *string {
	if o == nil {
		return nil
	}
	return o.ClientSecret
}

type SourceShopifyShopifyAuthorizationMethodType string

const (
	SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyOAuth20     SourceShopifyShopifyAuthorizationMethodType = "source-shopify_OAuth2.0"
	SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyAPIPassword SourceShopifyShopifyAuthorizationMethodType = "source-shopify_API Password"
)

// SourceShopifyShopifyAuthorizationMethod - The authorization method to use to retrieve data from Shopify
type SourceShopifyShopifyAuthorizationMethod struct {
	SourceShopifyOAuth20     *SourceShopifyOAuth20
	SourceShopifyAPIPassword *SourceShopifyAPIPassword

	Type SourceShopifyShopifyAuthorizationMethodType
}

func CreateSourceShopifyShopifyAuthorizationMethodSourceShopifyOAuth20(sourceShopifyOAuth20 SourceShopifyOAuth20) SourceShopifyShopifyAuthorizationMethod {
	typ := SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyOAuth20

	return SourceShopifyShopifyAuthorizationMethod{
		SourceShopifyOAuth20: &sourceShopifyOAuth20,
		Type:                 typ,
	}
}

func CreateSourceShopifyShopifyAuthorizationMethodSourceShopifyAPIPassword(sourceShopifyAPIPassword SourceShopifyAPIPassword) SourceShopifyShopifyAuthorizationMethod {
	typ := SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyAPIPassword

	return SourceShopifyShopifyAuthorizationMethod{
		SourceShopifyAPIPassword: &sourceShopifyAPIPassword,
		Type:                     typ,
	}
}

func (u *SourceShopifyShopifyAuthorizationMethod) UnmarshalJSON(data []byte) error {

	var sourceShopifyAPIPassword SourceShopifyAPIPassword = SourceShopifyAPIPassword{}
	if err := utils.UnmarshalJSON(data, &sourceShopifyAPIPassword, "", true, true); err == nil {
		u.SourceShopifyAPIPassword = &sourceShopifyAPIPassword
		u.Type = SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyAPIPassword
		return nil
	}

	var sourceShopifyOAuth20 SourceShopifyOAuth20 = SourceShopifyOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceShopifyOAuth20, "", true, true); err == nil {
		u.SourceShopifyOAuth20 = &sourceShopifyOAuth20
		u.Type = SourceShopifyShopifyAuthorizationMethodTypeSourceShopifyOAuth20
		return nil
	}

	return errors.New("could not unmarshal into supported union types")
}

func (u SourceShopifyShopifyAuthorizationMethod) MarshalJSON() ([]byte, error) {
	if u.SourceShopifyOAuth20 != nil {
		return utils.MarshalJSON(u.SourceShopifyOAuth20, "", true)
	}

	if u.SourceShopifyAPIPassword != nil {
		return utils.MarshalJSON(u.SourceShopifyAPIPassword, "", true)
	}

	return nil, errors.New("could not marshal union type: all fields are null")
}

type Shopify string

const (
	ShopifyShopify Shopify = "shopify"
)

func (e Shopify) ToPointer() *Shopify {
	return &e
}

func (e *Shopify) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "shopify":
		*e = Shopify(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Shopify: %v", v)
	}
}

type SourceShopify struct {
	// Defines what would be a date range per single BULK Job
	BulkWindowInDays *int64 `default:"30" json:"bulk_window_in_days"`
	// The authorization method to use to retrieve data from Shopify
	Credentials *SourceShopifyShopifyAuthorizationMethod `json:"credentials,omitempty"`
	// Defines which API type (REST/BULK) to use to fetch `Transactions` data. If you are a `Shopify Plus` user, leave the default value to speed up the fetch.
	FetchTransactionsUserID *bool `default:"false" json:"fetch_transactions_user_id"`
	// The name of your Shopify store found in the URL. For example, if your URL was https://NAME.myshopify.com, then the name would be 'NAME' or 'NAME.myshopify.com'.
	Shop       string  `json:"shop"`
	sourceType Shopify `const:"shopify" json:"sourceType"`
	// The date you would like to replicate data from. Format: YYYY-MM-DD. Any data before this date will not be replicated.
	StartDate *types.Date `default:"2020-01-01" json:"start_date"`
}

func (s SourceShopify) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceShopify) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceShopify) GetBulkWindowInDays() *int64 {
	if o == nil {
		return nil
	}
	return o.BulkWindowInDays
}

func (o *SourceShopify) GetCredentials() *SourceShopifyShopifyAuthorizationMethod {
	if o == nil {
		return nil
	}
	return o.Credentials
}

func (o *SourceShopify) GetFetchTransactionsUserID() *bool {
	if o == nil {
		return nil
	}
	return o.FetchTransactionsUserID
}

func (o *SourceShopify) GetShop() string {
	if o == nil {
		return ""
	}
	return o.Shop
}

func (o *SourceShopify) GetSourceType() Shopify {
	return ShopifyShopify
}

func (o *SourceShopify) GetStartDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.StartDate
}