// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceSmartsheetsUpdateSchemasAuthType string

const (
	SourceSmartsheetsUpdateSchemasAuthTypeAccessToken SourceSmartsheetsUpdateSchemasAuthType = "access_token"
)

func (e SourceSmartsheetsUpdateSchemasAuthType) ToPointer() *SourceSmartsheetsUpdateSchemasAuthType {
	return &e
}
func (e *SourceSmartsheetsUpdateSchemasAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "access_token":
		*e = SourceSmartsheetsUpdateSchemasAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceSmartsheetsUpdateSchemasAuthType: %v", v)
	}
}

type SourceSmartsheetsUpdateAPIAccessToken struct {
	// The access token to use for accessing your data from Smartsheets. This access token must be generated by a user with at least read access to the data you'd like to replicate. Generate an access token in the Smartsheets main menu by clicking Account > Apps & Integrations > API Access. See the <a href="https://docs.airbyte.com/integrations/sources/smartsheets/#setup-guide">setup guide</a> for information on how to obtain this token.
	AccessToken string                                  `json:"access_token"`
	authType    *SourceSmartsheetsUpdateSchemasAuthType `const:"access_token" json:"auth_type,omitempty"`
}

func (s SourceSmartsheetsUpdateAPIAccessToken) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSmartsheetsUpdateAPIAccessToken) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceSmartsheetsUpdateAPIAccessToken) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceSmartsheetsUpdateAPIAccessToken) GetAuthType() *SourceSmartsheetsUpdateSchemasAuthType {
	return SourceSmartsheetsUpdateSchemasAuthTypeAccessToken.ToPointer()
}

type SourceSmartsheetsUpdateAuthType string

const (
	SourceSmartsheetsUpdateAuthTypeOauth20 SourceSmartsheetsUpdateAuthType = "oauth2.0"
)

func (e SourceSmartsheetsUpdateAuthType) ToPointer() *SourceSmartsheetsUpdateAuthType {
	return &e
}
func (e *SourceSmartsheetsUpdateAuthType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "oauth2.0":
		*e = SourceSmartsheetsUpdateAuthType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceSmartsheetsUpdateAuthType: %v", v)
	}
}

type SourceSmartsheetsUpdateOAuth20 struct {
	// Access Token for making authenticated requests.
	AccessToken string                           `json:"access_token"`
	authType    *SourceSmartsheetsUpdateAuthType `const:"oauth2.0" json:"auth_type,omitempty"`
	// The API ID of the SmartSheets developer application.
	ClientID string `json:"client_id"`
	// The API Secret the SmartSheets developer application.
	ClientSecret string `json:"client_secret"`
	// The key to refresh the expired access_token.
	RefreshToken string `json:"refresh_token"`
	// The date-time when the access token should be refreshed.
	TokenExpiryDate time.Time `json:"token_expiry_date"`
}

func (s SourceSmartsheetsUpdateOAuth20) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSmartsheetsUpdateOAuth20) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceSmartsheetsUpdateOAuth20) GetAccessToken() string {
	if o == nil {
		return ""
	}
	return o.AccessToken
}

func (o *SourceSmartsheetsUpdateOAuth20) GetAuthType() *SourceSmartsheetsUpdateAuthType {
	return SourceSmartsheetsUpdateAuthTypeOauth20.ToPointer()
}

func (o *SourceSmartsheetsUpdateOAuth20) GetClientID() string {
	if o == nil {
		return ""
	}
	return o.ClientID
}

func (o *SourceSmartsheetsUpdateOAuth20) GetClientSecret() string {
	if o == nil {
		return ""
	}
	return o.ClientSecret
}

func (o *SourceSmartsheetsUpdateOAuth20) GetRefreshToken() string {
	if o == nil {
		return ""
	}
	return o.RefreshToken
}

func (o *SourceSmartsheetsUpdateOAuth20) GetTokenExpiryDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.TokenExpiryDate
}

type SourceSmartsheetsUpdateAuthorizationMethodType string

const (
	SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateOAuth20        SourceSmartsheetsUpdateAuthorizationMethodType = "source-smartsheets-update_OAuth2.0"
	SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateAPIAccessToken SourceSmartsheetsUpdateAuthorizationMethodType = "source-smartsheets-update_API Access Token"
)

type SourceSmartsheetsUpdateAuthorizationMethod struct {
	SourceSmartsheetsUpdateOAuth20        *SourceSmartsheetsUpdateOAuth20        `queryParam:"inline"`
	SourceSmartsheetsUpdateAPIAccessToken *SourceSmartsheetsUpdateAPIAccessToken `queryParam:"inline"`

	Type SourceSmartsheetsUpdateAuthorizationMethodType
}

func CreateSourceSmartsheetsUpdateAuthorizationMethodSourceSmartsheetsUpdateOAuth20(sourceSmartsheetsUpdateOAuth20 SourceSmartsheetsUpdateOAuth20) SourceSmartsheetsUpdateAuthorizationMethod {
	typ := SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateOAuth20

	return SourceSmartsheetsUpdateAuthorizationMethod{
		SourceSmartsheetsUpdateOAuth20: &sourceSmartsheetsUpdateOAuth20,
		Type:                           typ,
	}
}

func CreateSourceSmartsheetsUpdateAuthorizationMethodSourceSmartsheetsUpdateAPIAccessToken(sourceSmartsheetsUpdateAPIAccessToken SourceSmartsheetsUpdateAPIAccessToken) SourceSmartsheetsUpdateAuthorizationMethod {
	typ := SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateAPIAccessToken

	return SourceSmartsheetsUpdateAuthorizationMethod{
		SourceSmartsheetsUpdateAPIAccessToken: &sourceSmartsheetsUpdateAPIAccessToken,
		Type:                                  typ,
	}
}

func (u *SourceSmartsheetsUpdateAuthorizationMethod) UnmarshalJSON(data []byte) error {

	var sourceSmartsheetsUpdateAPIAccessToken SourceSmartsheetsUpdateAPIAccessToken = SourceSmartsheetsUpdateAPIAccessToken{}
	if err := utils.UnmarshalJSON(data, &sourceSmartsheetsUpdateAPIAccessToken, "", true, true); err == nil {
		u.SourceSmartsheetsUpdateAPIAccessToken = &sourceSmartsheetsUpdateAPIAccessToken
		u.Type = SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateAPIAccessToken
		return nil
	}

	var sourceSmartsheetsUpdateOAuth20 SourceSmartsheetsUpdateOAuth20 = SourceSmartsheetsUpdateOAuth20{}
	if err := utils.UnmarshalJSON(data, &sourceSmartsheetsUpdateOAuth20, "", true, true); err == nil {
		u.SourceSmartsheetsUpdateOAuth20 = &sourceSmartsheetsUpdateOAuth20
		u.Type = SourceSmartsheetsUpdateAuthorizationMethodTypeSourceSmartsheetsUpdateOAuth20
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceSmartsheetsUpdateAuthorizationMethod", string(data))
}

func (u SourceSmartsheetsUpdateAuthorizationMethod) MarshalJSON() ([]byte, error) {
	if u.SourceSmartsheetsUpdateOAuth20 != nil {
		return utils.MarshalJSON(u.SourceSmartsheetsUpdateOAuth20, "", true)
	}

	if u.SourceSmartsheetsUpdateAPIAccessToken != nil {
		return utils.MarshalJSON(u.SourceSmartsheetsUpdateAPIAccessToken, "", true)
	}

	return nil, errors.New("could not marshal union type SourceSmartsheetsUpdateAuthorizationMethod: all fields are null")
}

type SourceSmartsheetsUpdateValidenums string

const (
	SourceSmartsheetsUpdateValidenumsSheetcreatedAt   SourceSmartsheetsUpdateValidenums = "sheetcreatedAt"
	SourceSmartsheetsUpdateValidenumsSheetid          SourceSmartsheetsUpdateValidenums = "sheetid"
	SourceSmartsheetsUpdateValidenumsSheetmodifiedAt  SourceSmartsheetsUpdateValidenums = "sheetmodifiedAt"
	SourceSmartsheetsUpdateValidenumsSheetname        SourceSmartsheetsUpdateValidenums = "sheetname"
	SourceSmartsheetsUpdateValidenumsSheetpermalink   SourceSmartsheetsUpdateValidenums = "sheetpermalink"
	SourceSmartsheetsUpdateValidenumsSheetversion     SourceSmartsheetsUpdateValidenums = "sheetversion"
	SourceSmartsheetsUpdateValidenumsSheetaccessLevel SourceSmartsheetsUpdateValidenums = "sheetaccess_level"
	SourceSmartsheetsUpdateValidenumsRowID            SourceSmartsheetsUpdateValidenums = "row_id"
	SourceSmartsheetsUpdateValidenumsRowAccessLevel   SourceSmartsheetsUpdateValidenums = "row_access_level"
	SourceSmartsheetsUpdateValidenumsRowCreatedAt     SourceSmartsheetsUpdateValidenums = "row_created_at"
	SourceSmartsheetsUpdateValidenumsRowCreatedBy     SourceSmartsheetsUpdateValidenums = "row_created_by"
	SourceSmartsheetsUpdateValidenumsRowExpanded      SourceSmartsheetsUpdateValidenums = "row_expanded"
	SourceSmartsheetsUpdateValidenumsRowModifiedBy    SourceSmartsheetsUpdateValidenums = "row_modified_by"
	SourceSmartsheetsUpdateValidenumsRowParentID      SourceSmartsheetsUpdateValidenums = "row_parent_id"
	SourceSmartsheetsUpdateValidenumsRowPermalink     SourceSmartsheetsUpdateValidenums = "row_permalink"
	SourceSmartsheetsUpdateValidenumsRowNumber        SourceSmartsheetsUpdateValidenums = "row_number"
	SourceSmartsheetsUpdateValidenumsRowVersion       SourceSmartsheetsUpdateValidenums = "row_version"
)

func (e SourceSmartsheetsUpdateValidenums) ToPointer() *SourceSmartsheetsUpdateValidenums {
	return &e
}
func (e *SourceSmartsheetsUpdateValidenums) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "sheetcreatedAt":
		fallthrough
	case "sheetid":
		fallthrough
	case "sheetmodifiedAt":
		fallthrough
	case "sheetname":
		fallthrough
	case "sheetpermalink":
		fallthrough
	case "sheetversion":
		fallthrough
	case "sheetaccess_level":
		fallthrough
	case "row_id":
		fallthrough
	case "row_access_level":
		fallthrough
	case "row_created_at":
		fallthrough
	case "row_created_by":
		fallthrough
	case "row_expanded":
		fallthrough
	case "row_modified_by":
		fallthrough
	case "row_parent_id":
		fallthrough
	case "row_permalink":
		fallthrough
	case "row_number":
		fallthrough
	case "row_version":
		*e = SourceSmartsheetsUpdateValidenums(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceSmartsheetsUpdateValidenums: %v", v)
	}
}

type SourceSmartsheetsUpdate struct {
	Credentials SourceSmartsheetsUpdateAuthorizationMethod `json:"credentials"`
	// If true, the source will treat the provided sheet_id as a report. If false, the source will treat the provided sheet_id as a sheet.
	IsReport *bool `default:"false" json:"is_report"`
	// A List of available columns which metadata can be pulled from.
	MetadataFields []SourceSmartsheetsUpdateValidenums `json:"metadata_fields,omitempty"`
	// The spreadsheet ID. Find it by opening the spreadsheet then navigating to File > Properties
	SpreadsheetID string `json:"spreadsheet_id"`
}

func (s SourceSmartsheetsUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceSmartsheetsUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceSmartsheetsUpdate) GetCredentials() SourceSmartsheetsUpdateAuthorizationMethod {
	if o == nil {
		return SourceSmartsheetsUpdateAuthorizationMethod{}
	}
	return o.Credentials
}

func (o *SourceSmartsheetsUpdate) GetIsReport() *bool {
	if o == nil {
		return nil
	}
	return o.IsReport
}

func (o *SourceSmartsheetsUpdate) GetMetadataFields() []SourceSmartsheetsUpdateValidenums {
	if o == nil {
		return nil
	}
	return o.MetadataFields
}

func (o *SourceSmartsheetsUpdate) GetSpreadsheetID() string {
	if o == nil {
		return ""
	}
	return o.SpreadsheetID
}
