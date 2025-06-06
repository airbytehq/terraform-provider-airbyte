// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

type SourceGooglePagespeedInsightsUpdateCategories string

const (
	SourceGooglePagespeedInsightsUpdateCategoriesAccessibility SourceGooglePagespeedInsightsUpdateCategories = "accessibility"
	SourceGooglePagespeedInsightsUpdateCategoriesBestPractices SourceGooglePagespeedInsightsUpdateCategories = "best-practices"
	SourceGooglePagespeedInsightsUpdateCategoriesPerformance   SourceGooglePagespeedInsightsUpdateCategories = "performance"
	SourceGooglePagespeedInsightsUpdateCategoriesPwa           SourceGooglePagespeedInsightsUpdateCategories = "pwa"
	SourceGooglePagespeedInsightsUpdateCategoriesSeo           SourceGooglePagespeedInsightsUpdateCategories = "seo"
)

func (e SourceGooglePagespeedInsightsUpdateCategories) ToPointer() *SourceGooglePagespeedInsightsUpdateCategories {
	return &e
}
func (e *SourceGooglePagespeedInsightsUpdateCategories) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "accessibility":
		fallthrough
	case "best-practices":
		fallthrough
	case "performance":
		fallthrough
	case "pwa":
		fallthrough
	case "seo":
		*e = SourceGooglePagespeedInsightsUpdateCategories(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceGooglePagespeedInsightsUpdateCategories: %v", v)
	}
}

type SourceGooglePagespeedInsightsUpdateStrategies string

const (
	SourceGooglePagespeedInsightsUpdateStrategiesDesktop SourceGooglePagespeedInsightsUpdateStrategies = "desktop"
	SourceGooglePagespeedInsightsUpdateStrategiesMobile  SourceGooglePagespeedInsightsUpdateStrategies = "mobile"
)

func (e SourceGooglePagespeedInsightsUpdateStrategies) ToPointer() *SourceGooglePagespeedInsightsUpdateStrategies {
	return &e
}
func (e *SourceGooglePagespeedInsightsUpdateStrategies) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "desktop":
		fallthrough
	case "mobile":
		*e = SourceGooglePagespeedInsightsUpdateStrategies(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceGooglePagespeedInsightsUpdateStrategies: %v", v)
	}
}

type SourceGooglePagespeedInsightsUpdate struct {
	// Google PageSpeed API Key. See <a href="https://developers.google.com/speed/docs/insights/v5/get-started#APIKey">here</a>. The key is optional - however the API is heavily rate limited when using without API Key. Creating and using the API key therefore is recommended. The key is case sensitive.
	APIKey *string `json:"api_key,omitempty"`
	// Defines which Lighthouse category to run. One or many of: "accessibility", "best-practices", "performance", "pwa", "seo".
	Categories []SourceGooglePagespeedInsightsUpdateCategories `json:"categories"`
	// The analyses strategy to use. Either "desktop" or "mobile".
	Strategies []SourceGooglePagespeedInsightsUpdateStrategies `json:"strategies"`
	// The URLs to retrieve pagespeed information from. The connector will attempt to sync PageSpeed reports for all the defined URLs. Format: https://(www.)url.domain
	Urls []string `json:"urls"`
}

func (o *SourceGooglePagespeedInsightsUpdate) GetAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.APIKey
}

func (o *SourceGooglePagespeedInsightsUpdate) GetCategories() []SourceGooglePagespeedInsightsUpdateCategories {
	if o == nil {
		return []SourceGooglePagespeedInsightsUpdateCategories{}
	}
	return o.Categories
}

func (o *SourceGooglePagespeedInsightsUpdate) GetStrategies() []SourceGooglePagespeedInsightsUpdateStrategies {
	if o == nil {
		return []SourceGooglePagespeedInsightsUpdateStrategies{}
	}
	return o.Strategies
}

func (o *SourceGooglePagespeedInsightsUpdate) GetUrls() []string {
	if o == nil {
		return []string{}
	}
	return o.Urls
}
