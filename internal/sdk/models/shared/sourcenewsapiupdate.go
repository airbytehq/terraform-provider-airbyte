// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// SourceNewsAPIUpdateCategory - The category you want to get top headlines for.
type SourceNewsAPIUpdateCategory string

const (
	SourceNewsAPIUpdateCategoryBusiness      SourceNewsAPIUpdateCategory = "business"
	SourceNewsAPIUpdateCategoryEntertainment SourceNewsAPIUpdateCategory = "entertainment"
	SourceNewsAPIUpdateCategoryGeneral       SourceNewsAPIUpdateCategory = "general"
	SourceNewsAPIUpdateCategoryHealth        SourceNewsAPIUpdateCategory = "health"
	SourceNewsAPIUpdateCategoryScience       SourceNewsAPIUpdateCategory = "science"
	SourceNewsAPIUpdateCategorySports        SourceNewsAPIUpdateCategory = "sports"
	SourceNewsAPIUpdateCategoryTechnology    SourceNewsAPIUpdateCategory = "technology"
)

func (e SourceNewsAPIUpdateCategory) ToPointer() *SourceNewsAPIUpdateCategory {
	return &e
}
func (e *SourceNewsAPIUpdateCategory) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "business":
		fallthrough
	case "entertainment":
		fallthrough
	case "general":
		fallthrough
	case "health":
		fallthrough
	case "science":
		fallthrough
	case "sports":
		fallthrough
	case "technology":
		*e = SourceNewsAPIUpdateCategory(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNewsAPIUpdateCategory: %v", v)
	}
}

// SourceNewsAPIUpdateCountry - The 2-letter ISO 3166-1 code of the country you want to get headlines
// for. You can't mix this with the sources parameter.
type SourceNewsAPIUpdateCountry string

const (
	SourceNewsAPIUpdateCountryAe SourceNewsAPIUpdateCountry = "ae"
	SourceNewsAPIUpdateCountryAr SourceNewsAPIUpdateCountry = "ar"
	SourceNewsAPIUpdateCountryAt SourceNewsAPIUpdateCountry = "at"
	SourceNewsAPIUpdateCountryAu SourceNewsAPIUpdateCountry = "au"
	SourceNewsAPIUpdateCountryBe SourceNewsAPIUpdateCountry = "be"
	SourceNewsAPIUpdateCountryBg SourceNewsAPIUpdateCountry = "bg"
	SourceNewsAPIUpdateCountryBr SourceNewsAPIUpdateCountry = "br"
	SourceNewsAPIUpdateCountryCa SourceNewsAPIUpdateCountry = "ca"
	SourceNewsAPIUpdateCountryCh SourceNewsAPIUpdateCountry = "ch"
	SourceNewsAPIUpdateCountryCn SourceNewsAPIUpdateCountry = "cn"
	SourceNewsAPIUpdateCountryCo SourceNewsAPIUpdateCountry = "co"
	SourceNewsAPIUpdateCountryCu SourceNewsAPIUpdateCountry = "cu"
	SourceNewsAPIUpdateCountryCz SourceNewsAPIUpdateCountry = "cz"
	SourceNewsAPIUpdateCountryDe SourceNewsAPIUpdateCountry = "de"
	SourceNewsAPIUpdateCountryEg SourceNewsAPIUpdateCountry = "eg"
	SourceNewsAPIUpdateCountryFr SourceNewsAPIUpdateCountry = "fr"
	SourceNewsAPIUpdateCountryGb SourceNewsAPIUpdateCountry = "gb"
	SourceNewsAPIUpdateCountryGr SourceNewsAPIUpdateCountry = "gr"
	SourceNewsAPIUpdateCountryHk SourceNewsAPIUpdateCountry = "hk"
	SourceNewsAPIUpdateCountryHu SourceNewsAPIUpdateCountry = "hu"
	SourceNewsAPIUpdateCountryID SourceNewsAPIUpdateCountry = "id"
	SourceNewsAPIUpdateCountryIe SourceNewsAPIUpdateCountry = "ie"
	SourceNewsAPIUpdateCountryIl SourceNewsAPIUpdateCountry = "il"
	SourceNewsAPIUpdateCountryIn SourceNewsAPIUpdateCountry = "in"
	SourceNewsAPIUpdateCountryIt SourceNewsAPIUpdateCountry = "it"
	SourceNewsAPIUpdateCountryJp SourceNewsAPIUpdateCountry = "jp"
	SourceNewsAPIUpdateCountryKr SourceNewsAPIUpdateCountry = "kr"
	SourceNewsAPIUpdateCountryLt SourceNewsAPIUpdateCountry = "lt"
	SourceNewsAPIUpdateCountryLv SourceNewsAPIUpdateCountry = "lv"
	SourceNewsAPIUpdateCountryMa SourceNewsAPIUpdateCountry = "ma"
	SourceNewsAPIUpdateCountryMx SourceNewsAPIUpdateCountry = "mx"
	SourceNewsAPIUpdateCountryMy SourceNewsAPIUpdateCountry = "my"
	SourceNewsAPIUpdateCountryNg SourceNewsAPIUpdateCountry = "ng"
	SourceNewsAPIUpdateCountryNl SourceNewsAPIUpdateCountry = "nl"
	SourceNewsAPIUpdateCountryNo SourceNewsAPIUpdateCountry = "no"
	SourceNewsAPIUpdateCountryNz SourceNewsAPIUpdateCountry = "nz"
	SourceNewsAPIUpdateCountryPh SourceNewsAPIUpdateCountry = "ph"
	SourceNewsAPIUpdateCountryPl SourceNewsAPIUpdateCountry = "pl"
	SourceNewsAPIUpdateCountryPt SourceNewsAPIUpdateCountry = "pt"
	SourceNewsAPIUpdateCountryRo SourceNewsAPIUpdateCountry = "ro"
	SourceNewsAPIUpdateCountryRs SourceNewsAPIUpdateCountry = "rs"
	SourceNewsAPIUpdateCountryRu SourceNewsAPIUpdateCountry = "ru"
	SourceNewsAPIUpdateCountrySa SourceNewsAPIUpdateCountry = "sa"
	SourceNewsAPIUpdateCountrySe SourceNewsAPIUpdateCountry = "se"
	SourceNewsAPIUpdateCountrySg SourceNewsAPIUpdateCountry = "sg"
	SourceNewsAPIUpdateCountrySi SourceNewsAPIUpdateCountry = "si"
	SourceNewsAPIUpdateCountrySk SourceNewsAPIUpdateCountry = "sk"
	SourceNewsAPIUpdateCountryTh SourceNewsAPIUpdateCountry = "th"
	SourceNewsAPIUpdateCountryTr SourceNewsAPIUpdateCountry = "tr"
	SourceNewsAPIUpdateCountryTw SourceNewsAPIUpdateCountry = "tw"
	SourceNewsAPIUpdateCountryUa SourceNewsAPIUpdateCountry = "ua"
	SourceNewsAPIUpdateCountryUs SourceNewsAPIUpdateCountry = "us"
	SourceNewsAPIUpdateCountryVe SourceNewsAPIUpdateCountry = "ve"
	SourceNewsAPIUpdateCountryZa SourceNewsAPIUpdateCountry = "za"
)

func (e SourceNewsAPIUpdateCountry) ToPointer() *SourceNewsAPIUpdateCountry {
	return &e
}
func (e *SourceNewsAPIUpdateCountry) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "ae":
		fallthrough
	case "ar":
		fallthrough
	case "at":
		fallthrough
	case "au":
		fallthrough
	case "be":
		fallthrough
	case "bg":
		fallthrough
	case "br":
		fallthrough
	case "ca":
		fallthrough
	case "ch":
		fallthrough
	case "cn":
		fallthrough
	case "co":
		fallthrough
	case "cu":
		fallthrough
	case "cz":
		fallthrough
	case "de":
		fallthrough
	case "eg":
		fallthrough
	case "fr":
		fallthrough
	case "gb":
		fallthrough
	case "gr":
		fallthrough
	case "hk":
		fallthrough
	case "hu":
		fallthrough
	case "id":
		fallthrough
	case "ie":
		fallthrough
	case "il":
		fallthrough
	case "in":
		fallthrough
	case "it":
		fallthrough
	case "jp":
		fallthrough
	case "kr":
		fallthrough
	case "lt":
		fallthrough
	case "lv":
		fallthrough
	case "ma":
		fallthrough
	case "mx":
		fallthrough
	case "my":
		fallthrough
	case "ng":
		fallthrough
	case "nl":
		fallthrough
	case "no":
		fallthrough
	case "nz":
		fallthrough
	case "ph":
		fallthrough
	case "pl":
		fallthrough
	case "pt":
		fallthrough
	case "ro":
		fallthrough
	case "rs":
		fallthrough
	case "ru":
		fallthrough
	case "sa":
		fallthrough
	case "se":
		fallthrough
	case "sg":
		fallthrough
	case "si":
		fallthrough
	case "sk":
		fallthrough
	case "th":
		fallthrough
	case "tr":
		fallthrough
	case "tw":
		fallthrough
	case "ua":
		fallthrough
	case "us":
		fallthrough
	case "ve":
		fallthrough
	case "za":
		*e = SourceNewsAPIUpdateCountry(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNewsAPIUpdateCountry: %v", v)
	}
}

// SourceNewsAPIUpdateLanguage - The 2-letter ISO-639-1 code of the language you want to get headlines
// for. Possible options: ar de en es fr he it nl no pt ru se ud zh.
type SourceNewsAPIUpdateLanguage string

const (
	SourceNewsAPIUpdateLanguageAr SourceNewsAPIUpdateLanguage = "ar"
	SourceNewsAPIUpdateLanguageDe SourceNewsAPIUpdateLanguage = "de"
	SourceNewsAPIUpdateLanguageEn SourceNewsAPIUpdateLanguage = "en"
	SourceNewsAPIUpdateLanguageEs SourceNewsAPIUpdateLanguage = "es"
	SourceNewsAPIUpdateLanguageFr SourceNewsAPIUpdateLanguage = "fr"
	SourceNewsAPIUpdateLanguageHe SourceNewsAPIUpdateLanguage = "he"
	SourceNewsAPIUpdateLanguageIt SourceNewsAPIUpdateLanguage = "it"
	SourceNewsAPIUpdateLanguageNl SourceNewsAPIUpdateLanguage = "nl"
	SourceNewsAPIUpdateLanguageNo SourceNewsAPIUpdateLanguage = "no"
	SourceNewsAPIUpdateLanguagePt SourceNewsAPIUpdateLanguage = "pt"
	SourceNewsAPIUpdateLanguageRu SourceNewsAPIUpdateLanguage = "ru"
	SourceNewsAPIUpdateLanguageSe SourceNewsAPIUpdateLanguage = "se"
	SourceNewsAPIUpdateLanguageUd SourceNewsAPIUpdateLanguage = "ud"
	SourceNewsAPIUpdateLanguageZh SourceNewsAPIUpdateLanguage = "zh"
)

func (e SourceNewsAPIUpdateLanguage) ToPointer() *SourceNewsAPIUpdateLanguage {
	return &e
}
func (e *SourceNewsAPIUpdateLanguage) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "ar":
		fallthrough
	case "de":
		fallthrough
	case "en":
		fallthrough
	case "es":
		fallthrough
	case "fr":
		fallthrough
	case "he":
		fallthrough
	case "it":
		fallthrough
	case "nl":
		fallthrough
	case "no":
		fallthrough
	case "pt":
		fallthrough
	case "ru":
		fallthrough
	case "se":
		fallthrough
	case "ud":
		fallthrough
	case "zh":
		*e = SourceNewsAPIUpdateLanguage(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNewsAPIUpdateLanguage: %v", v)
	}
}

type SourceNewsAPIUpdateSearchIn string

const (
	SourceNewsAPIUpdateSearchInTitle       SourceNewsAPIUpdateSearchIn = "title"
	SourceNewsAPIUpdateSearchInDescription SourceNewsAPIUpdateSearchIn = "description"
	SourceNewsAPIUpdateSearchInContent     SourceNewsAPIUpdateSearchIn = "content"
)

func (e SourceNewsAPIUpdateSearchIn) ToPointer() *SourceNewsAPIUpdateSearchIn {
	return &e
}
func (e *SourceNewsAPIUpdateSearchIn) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "title":
		fallthrough
	case "description":
		fallthrough
	case "content":
		*e = SourceNewsAPIUpdateSearchIn(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNewsAPIUpdateSearchIn: %v", v)
	}
}

// SourceNewsAPIUpdateSortBy - The order to sort the articles in. Possible options: relevancy,
// popularity, publishedAt.
type SourceNewsAPIUpdateSortBy string

const (
	SourceNewsAPIUpdateSortByRelevancy   SourceNewsAPIUpdateSortBy = "relevancy"
	SourceNewsAPIUpdateSortByPopularity  SourceNewsAPIUpdateSortBy = "popularity"
	SourceNewsAPIUpdateSortByPublishedAt SourceNewsAPIUpdateSortBy = "publishedAt"
)

func (e SourceNewsAPIUpdateSortBy) ToPointer() *SourceNewsAPIUpdateSortBy {
	return &e
}
func (e *SourceNewsAPIUpdateSortBy) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "relevancy":
		fallthrough
	case "popularity":
		fallthrough
	case "publishedAt":
		*e = SourceNewsAPIUpdateSortBy(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceNewsAPIUpdateSortBy: %v", v)
	}
}

type SourceNewsAPIUpdate struct {
	// API Key
	APIKey string `json:"api_key"`
	// The category you want to get top headlines for.
	Category *SourceNewsAPIUpdateCategory `default:"business" json:"category"`
	// The 2-letter ISO 3166-1 code of the country you want to get headlines
	// for. You can't mix this with the sources parameter.
	//
	Country *SourceNewsAPIUpdateCountry `default:"us" json:"country"`
	// A comma-seperated string of domains (eg bbc.co.uk, techcrunch.com,
	// engadget.com) to restrict the search to.
	//
	Domains []string `json:"domains,omitempty"`
	// A date and optional time for the newest article allowed. This should
	// be in ISO 8601 format.
	//
	EndDate *string `json:"end_date,omitempty"`
	// A comma-seperated string of domains (eg bbc.co.uk, techcrunch.com,
	// engadget.com) to remove from the results.
	//
	ExcludeDomains []string `json:"exclude_domains,omitempty"`
	// The 2-letter ISO-639-1 code of the language you want to get headlines
	// for. Possible options: ar de en es fr he it nl no pt ru se ud zh.
	//
	Language *SourceNewsAPIUpdateLanguage `json:"language,omitempty"`
	// Where to apply search query. Possible values are: title, description,
	// content.
	//
	SearchIn []SourceNewsAPIUpdateSearchIn `json:"search_in,omitempty"`
	// Search query. See https://newsapi.org/docs/endpoints/everything for
	// information.
	//
	SearchQuery *string `json:"search_query,omitempty"`
	// The order to sort the articles in. Possible options: relevancy,
	// popularity, publishedAt.
	//
	SortBy *SourceNewsAPIUpdateSortBy `default:"publishedAt" json:"sort_by"`
	// Identifiers (maximum 20) for the news sources or blogs you want
	// headlines from. Use the `/sources` endpoint to locate these
	// programmatically or look at the sources index:
	// https://newsapi.com/sources. Will override both country and category.
	//
	Sources []string `json:"sources,omitempty"`
	// A date and optional time for the oldest article allowed. This should
	// be in ISO 8601 format.
	//
	StartDate *string `json:"start_date,omitempty"`
}

func (s SourceNewsAPIUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceNewsAPIUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceNewsAPIUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceNewsAPIUpdate) GetCategory() *SourceNewsAPIUpdateCategory {
	if o == nil {
		return nil
	}
	return o.Category
}

func (o *SourceNewsAPIUpdate) GetCountry() *SourceNewsAPIUpdateCountry {
	if o == nil {
		return nil
	}
	return o.Country
}

func (o *SourceNewsAPIUpdate) GetDomains() []string {
	if o == nil {
		return nil
	}
	return o.Domains
}

func (o *SourceNewsAPIUpdate) GetEndDate() *string {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceNewsAPIUpdate) GetExcludeDomains() []string {
	if o == nil {
		return nil
	}
	return o.ExcludeDomains
}

func (o *SourceNewsAPIUpdate) GetLanguage() *SourceNewsAPIUpdateLanguage {
	if o == nil {
		return nil
	}
	return o.Language
}

func (o *SourceNewsAPIUpdate) GetSearchIn() []SourceNewsAPIUpdateSearchIn {
	if o == nil {
		return nil
	}
	return o.SearchIn
}

func (o *SourceNewsAPIUpdate) GetSearchQuery() *string {
	if o == nil {
		return nil
	}
	return o.SearchQuery
}

func (o *SourceNewsAPIUpdate) GetSortBy() *SourceNewsAPIUpdateSortBy {
	if o == nil {
		return nil
	}
	return o.SortBy
}

func (o *SourceNewsAPIUpdate) GetSources() []string {
	if o == nil {
		return nil
	}
	return o.Sources
}

func (o *SourceNewsAPIUpdate) GetStartDate() *string {
	if o == nil {
		return nil
	}
	return o.StartDate
}
