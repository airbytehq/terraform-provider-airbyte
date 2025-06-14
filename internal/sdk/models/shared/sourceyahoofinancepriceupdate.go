// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

// SourceYahooFinancePriceUpdateInterval - The interval of between prices queried.
type SourceYahooFinancePriceUpdateInterval string

const (
	SourceYahooFinancePriceUpdateIntervalOnem     SourceYahooFinancePriceUpdateInterval = "1m"
	SourceYahooFinancePriceUpdateIntervalFivem    SourceYahooFinancePriceUpdateInterval = "5m"
	SourceYahooFinancePriceUpdateIntervalFifteenm SourceYahooFinancePriceUpdateInterval = "15m"
	SourceYahooFinancePriceUpdateIntervalThirtym  SourceYahooFinancePriceUpdateInterval = "30m"
	SourceYahooFinancePriceUpdateIntervalNinetym  SourceYahooFinancePriceUpdateInterval = "90m"
	SourceYahooFinancePriceUpdateIntervalOneh     SourceYahooFinancePriceUpdateInterval = "1h"
	SourceYahooFinancePriceUpdateIntervalOned     SourceYahooFinancePriceUpdateInterval = "1d"
	SourceYahooFinancePriceUpdateIntervalFived    SourceYahooFinancePriceUpdateInterval = "5d"
	SourceYahooFinancePriceUpdateIntervalOnewk    SourceYahooFinancePriceUpdateInterval = "1wk"
	SourceYahooFinancePriceUpdateIntervalOnemo    SourceYahooFinancePriceUpdateInterval = "1mo"
	SourceYahooFinancePriceUpdateIntervalThreemo  SourceYahooFinancePriceUpdateInterval = "3mo"
)

func (e SourceYahooFinancePriceUpdateInterval) ToPointer() *SourceYahooFinancePriceUpdateInterval {
	return &e
}
func (e *SourceYahooFinancePriceUpdateInterval) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "1m":
		fallthrough
	case "5m":
		fallthrough
	case "15m":
		fallthrough
	case "30m":
		fallthrough
	case "90m":
		fallthrough
	case "1h":
		fallthrough
	case "1d":
		fallthrough
	case "5d":
		fallthrough
	case "1wk":
		fallthrough
	case "1mo":
		fallthrough
	case "3mo":
		*e = SourceYahooFinancePriceUpdateInterval(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceYahooFinancePriceUpdateInterval: %v", v)
	}
}

// SourceYahooFinancePriceUpdateRange - The range of prices to be queried.
type SourceYahooFinancePriceUpdateRange string

const (
	SourceYahooFinancePriceUpdateRangeOned    SourceYahooFinancePriceUpdateRange = "1d"
	SourceYahooFinancePriceUpdateRangeFived   SourceYahooFinancePriceUpdateRange = "5d"
	SourceYahooFinancePriceUpdateRangeSevend  SourceYahooFinancePriceUpdateRange = "7d"
	SourceYahooFinancePriceUpdateRangeOnemo   SourceYahooFinancePriceUpdateRange = "1mo"
	SourceYahooFinancePriceUpdateRangeThreemo SourceYahooFinancePriceUpdateRange = "3mo"
	SourceYahooFinancePriceUpdateRangeSixmo   SourceYahooFinancePriceUpdateRange = "6mo"
	SourceYahooFinancePriceUpdateRangeOney    SourceYahooFinancePriceUpdateRange = "1y"
	SourceYahooFinancePriceUpdateRangeTwoy    SourceYahooFinancePriceUpdateRange = "2y"
	SourceYahooFinancePriceUpdateRangeFivey   SourceYahooFinancePriceUpdateRange = "5y"
	SourceYahooFinancePriceUpdateRangeYtd     SourceYahooFinancePriceUpdateRange = "ytd"
	SourceYahooFinancePriceUpdateRangeMax     SourceYahooFinancePriceUpdateRange = "max"
)

func (e SourceYahooFinancePriceUpdateRange) ToPointer() *SourceYahooFinancePriceUpdateRange {
	return &e
}
func (e *SourceYahooFinancePriceUpdateRange) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "1d":
		fallthrough
	case "5d":
		fallthrough
	case "7d":
		fallthrough
	case "1mo":
		fallthrough
	case "3mo":
		fallthrough
	case "6mo":
		fallthrough
	case "1y":
		fallthrough
	case "2y":
		fallthrough
	case "5y":
		fallthrough
	case "ytd":
		fallthrough
	case "max":
		*e = SourceYahooFinancePriceUpdateRange(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceYahooFinancePriceUpdateRange: %v", v)
	}
}

type SourceYahooFinancePriceUpdate struct {
	// The interval of between prices queried.
	Interval *SourceYahooFinancePriceUpdateInterval `json:"interval,omitempty"`
	// The range of prices to be queried.
	Range *SourceYahooFinancePriceUpdateRange `json:"range,omitempty"`
	// Comma-separated identifiers for the stocks to be queried. Whitespaces are allowed.
	Tickers string `json:"tickers"`
}

func (o *SourceYahooFinancePriceUpdate) GetInterval() *SourceYahooFinancePriceUpdateInterval {
	if o == nil {
		return nil
	}
	return o.Interval
}

func (o *SourceYahooFinancePriceUpdate) GetRange() *SourceYahooFinancePriceUpdateRange {
	if o == nil {
		return nil
	}
	return o.Range
}

func (o *SourceYahooFinancePriceUpdate) GetTickers() string {
	if o == nil {
		return ""
	}
	return o.Tickers
}
