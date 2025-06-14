// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

type SourceMixpanelUpdateSchemasOptionTitle string

const (
	SourceMixpanelUpdateSchemasOptionTitleProjectSecret SourceMixpanelUpdateSchemasOptionTitle = "Project Secret"
)

func (e SourceMixpanelUpdateSchemasOptionTitle) ToPointer() *SourceMixpanelUpdateSchemasOptionTitle {
	return &e
}
func (e *SourceMixpanelUpdateSchemasOptionTitle) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Project Secret":
		*e = SourceMixpanelUpdateSchemasOptionTitle(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMixpanelUpdateSchemasOptionTitle: %v", v)
	}
}

type SourceMixpanelUpdateProjectSecret struct {
	// Mixpanel project secret. See the <a href="https://developer.mixpanel.com/reference/project-secret#managing-a-projects-secret">docs</a> for more information on how to obtain this.
	APISecret   string                                  `json:"api_secret"`
	optionTitle *SourceMixpanelUpdateSchemasOptionTitle `const:"Project Secret" json:"option_title,omitempty"`
}

func (s SourceMixpanelUpdateProjectSecret) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMixpanelUpdateProjectSecret) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMixpanelUpdateProjectSecret) GetAPISecret() string {
	if o == nil {
		return ""
	}
	return o.APISecret
}

func (o *SourceMixpanelUpdateProjectSecret) GetOptionTitle() *SourceMixpanelUpdateSchemasOptionTitle {
	return SourceMixpanelUpdateSchemasOptionTitleProjectSecret.ToPointer()
}

type SourceMixpanelUpdateOptionTitle string

const (
	SourceMixpanelUpdateOptionTitleServiceAccount SourceMixpanelUpdateOptionTitle = "Service Account"
)

func (e SourceMixpanelUpdateOptionTitle) ToPointer() *SourceMixpanelUpdateOptionTitle {
	return &e
}
func (e *SourceMixpanelUpdateOptionTitle) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Service Account":
		*e = SourceMixpanelUpdateOptionTitle(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMixpanelUpdateOptionTitle: %v", v)
	}
}

type SourceMixpanelUpdateServiceAccount struct {
	optionTitle *SourceMixpanelUpdateOptionTitle `const:"Service Account" json:"option_title,omitempty"`
	// Your project ID number. See the <a href="https://help.mixpanel.com/hc/en-us/articles/115004490503-Project-Settings#project-id">docs</a> for more information on how to obtain this.
	ProjectID int64 `json:"project_id"`
	// Mixpanel Service Account Secret. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.
	Secret string `json:"secret"`
	// Mixpanel Service Account Username. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.
	Username string `json:"username"`
}

func (s SourceMixpanelUpdateServiceAccount) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMixpanelUpdateServiceAccount) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMixpanelUpdateServiceAccount) GetOptionTitle() *SourceMixpanelUpdateOptionTitle {
	return SourceMixpanelUpdateOptionTitleServiceAccount.ToPointer()
}

func (o *SourceMixpanelUpdateServiceAccount) GetProjectID() int64 {
	if o == nil {
		return 0
	}
	return o.ProjectID
}

func (o *SourceMixpanelUpdateServiceAccount) GetSecret() string {
	if o == nil {
		return ""
	}
	return o.Secret
}

func (o *SourceMixpanelUpdateServiceAccount) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}

type SourceMixpanelUpdateAuthenticationWildcardType string

const (
	SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateServiceAccount SourceMixpanelUpdateAuthenticationWildcardType = "source-mixpanel-update_Service Account"
	SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateProjectSecret  SourceMixpanelUpdateAuthenticationWildcardType = "source-mixpanel-update_Project Secret"
)

// SourceMixpanelUpdateAuthenticationWildcard - Choose how to authenticate to Mixpanel
type SourceMixpanelUpdateAuthenticationWildcard struct {
	SourceMixpanelUpdateServiceAccount *SourceMixpanelUpdateServiceAccount `queryParam:"inline"`
	SourceMixpanelUpdateProjectSecret  *SourceMixpanelUpdateProjectSecret  `queryParam:"inline"`

	Type SourceMixpanelUpdateAuthenticationWildcardType
}

func CreateSourceMixpanelUpdateAuthenticationWildcardSourceMixpanelUpdateServiceAccount(sourceMixpanelUpdateServiceAccount SourceMixpanelUpdateServiceAccount) SourceMixpanelUpdateAuthenticationWildcard {
	typ := SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateServiceAccount

	return SourceMixpanelUpdateAuthenticationWildcard{
		SourceMixpanelUpdateServiceAccount: &sourceMixpanelUpdateServiceAccount,
		Type:                               typ,
	}
}

func CreateSourceMixpanelUpdateAuthenticationWildcardSourceMixpanelUpdateProjectSecret(sourceMixpanelUpdateProjectSecret SourceMixpanelUpdateProjectSecret) SourceMixpanelUpdateAuthenticationWildcard {
	typ := SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateProjectSecret

	return SourceMixpanelUpdateAuthenticationWildcard{
		SourceMixpanelUpdateProjectSecret: &sourceMixpanelUpdateProjectSecret,
		Type:                              typ,
	}
}

func (u *SourceMixpanelUpdateAuthenticationWildcard) UnmarshalJSON(data []byte) error {

	var sourceMixpanelUpdateProjectSecret SourceMixpanelUpdateProjectSecret = SourceMixpanelUpdateProjectSecret{}
	if err := utils.UnmarshalJSON(data, &sourceMixpanelUpdateProjectSecret, "", true, true); err == nil {
		u.SourceMixpanelUpdateProjectSecret = &sourceMixpanelUpdateProjectSecret
		u.Type = SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateProjectSecret
		return nil
	}

	var sourceMixpanelUpdateServiceAccount SourceMixpanelUpdateServiceAccount = SourceMixpanelUpdateServiceAccount{}
	if err := utils.UnmarshalJSON(data, &sourceMixpanelUpdateServiceAccount, "", true, true); err == nil {
		u.SourceMixpanelUpdateServiceAccount = &sourceMixpanelUpdateServiceAccount
		u.Type = SourceMixpanelUpdateAuthenticationWildcardTypeSourceMixpanelUpdateServiceAccount
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceMixpanelUpdateAuthenticationWildcard", string(data))
}

func (u SourceMixpanelUpdateAuthenticationWildcard) MarshalJSON() ([]byte, error) {
	if u.SourceMixpanelUpdateServiceAccount != nil {
		return utils.MarshalJSON(u.SourceMixpanelUpdateServiceAccount, "", true)
	}

	if u.SourceMixpanelUpdateProjectSecret != nil {
		return utils.MarshalJSON(u.SourceMixpanelUpdateProjectSecret, "", true)
	}

	return nil, errors.New("could not marshal union type SourceMixpanelUpdateAuthenticationWildcard: all fields are null")
}

// SourceMixpanelUpdateRegion - The region of mixpanel domain instance either US or EU.
type SourceMixpanelUpdateRegion string

const (
	SourceMixpanelUpdateRegionUs SourceMixpanelUpdateRegion = "US"
	SourceMixpanelUpdateRegionEu SourceMixpanelUpdateRegion = "EU"
)

func (e SourceMixpanelUpdateRegion) ToPointer() *SourceMixpanelUpdateRegion {
	return &e
}
func (e *SourceMixpanelUpdateRegion) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "US":
		fallthrough
	case "EU":
		*e = SourceMixpanelUpdateRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMixpanelUpdateRegion: %v", v)
	}
}

type SourceMixpanelUpdate struct {
	// A period of time for attributing results to ads and the lookback period after those actions occur during which ad results are counted. Default attribution window is 5 days. (This value should be non-negative integer)
	AttributionWindow *int64 `default:"5" json:"attribution_window"`
	// Choose how to authenticate to Mixpanel
	Credentials SourceMixpanelUpdateAuthenticationWildcard `json:"credentials"`
	// Defines window size in days, that used to slice through data. You can reduce it, if amount of data in each window is too big for your environment. (This value should be positive integer)
	DateWindowSize *int64 `default:"30" json:"date_window_size"`
	// The date in the format YYYY-MM-DD. Any data after this date will not be replicated. Left empty to always sync to most recent date
	EndDate *time.Time `json:"end_date,omitempty"`
	// The number of seconds to look back from the last synced timestamp during incremental syncs of the Export stream. This ensures no data is missed due to delays in event recording. Default is 0 seconds. Must be a non-negative integer.
	ExportLookbackWindow *int64 `default:"0" json:"export_lookback_window"`
	// The number of records to fetch per request for the engage stream. Default is 1000. If you are experiencing long sync times with this stream, try increasing this value.
	PageSize *int64 `default:"1000" json:"page_size"`
	// Time zone in which integer date times are stored. The project timezone may be found in the project settings in the <a href="https://help.mixpanel.com/hc/en-us/articles/115004547203-Manage-Timezones-for-Projects-in-Mixpanel">Mixpanel console</a>.
	ProjectTimezone *string `default:"US/Pacific" json:"project_timezone"`
	// The region of mixpanel domain instance either US or EU.
	Region *SourceMixpanelUpdateRegion `default:"US" json:"region"`
	// Setting this config parameter to TRUE ensures that new properties on events and engage records are captured. Otherwise new properties will be ignored.
	SelectPropertiesByDefault *bool `default:"true" json:"select_properties_by_default"`
	// The date in the format YYYY-MM-DD. Any data before this date will not be replicated. If this option is not set, the connector will replicate data from up to one year ago by default.
	StartDate *time.Time `json:"start_date,omitempty"`
}

func (s SourceMixpanelUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMixpanelUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceMixpanelUpdate) GetAttributionWindow() *int64 {
	if o == nil {
		return nil
	}
	return o.AttributionWindow
}

func (o *SourceMixpanelUpdate) GetCredentials() SourceMixpanelUpdateAuthenticationWildcard {
	if o == nil {
		return SourceMixpanelUpdateAuthenticationWildcard{}
	}
	return o.Credentials
}

func (o *SourceMixpanelUpdate) GetDateWindowSize() *int64 {
	if o == nil {
		return nil
	}
	return o.DateWindowSize
}

func (o *SourceMixpanelUpdate) GetEndDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceMixpanelUpdate) GetExportLookbackWindow() *int64 {
	if o == nil {
		return nil
	}
	return o.ExportLookbackWindow
}

func (o *SourceMixpanelUpdate) GetPageSize() *int64 {
	if o == nil {
		return nil
	}
	return o.PageSize
}

func (o *SourceMixpanelUpdate) GetProjectTimezone() *string {
	if o == nil {
		return nil
	}
	return o.ProjectTimezone
}

func (o *SourceMixpanelUpdate) GetRegion() *SourceMixpanelUpdateRegion {
	if o == nil {
		return nil
	}
	return o.Region
}

func (o *SourceMixpanelUpdate) GetSelectPropertiesByDefault() *bool {
	if o == nil {
		return nil
	}
	return o.SelectPropertiesByDefault
}

func (o *SourceMixpanelUpdate) GetStartDate() *time.Time {
	if o == nil {
		return nil
	}
	return o.StartDate
}
