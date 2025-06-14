// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"time"
)

// TimeFrame - For example 1min, 5min, 15min, 30min, 1hour, 4hour
type TimeFrame string

const (
	TimeFrameOnemin     TimeFrame = "1min"
	TimeFrameFivemin    TimeFrame = "5min"
	TimeFrameFifteenmin TimeFrame = "15min"
	TimeFrameThirtymin  TimeFrame = "30min"
	TimeFrameOnehour    TimeFrame = "1hour"
	TimeFrameFourhour   TimeFrame = "4hour"
)

func (e TimeFrame) ToPointer() *TimeFrame {
	return &e
}
func (e *TimeFrame) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "1min":
		fallthrough
	case "5min":
		fallthrough
	case "15min":
		fallthrough
	case "30min":
		fallthrough
	case "1hour":
		fallthrough
	case "4hour":
		*e = TimeFrame(v)
		return nil
	default:
		return fmt.Errorf("invalid value for TimeFrame: %v", v)
	}
}

type FinancialModelling string

const (
	FinancialModellingFinancialModelling FinancialModelling = "financial-modelling"
)

func (e FinancialModelling) ToPointer() *FinancialModelling {
	return &e
}
func (e *FinancialModelling) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "financial-modelling":
		*e = FinancialModelling(v)
		return nil
	default:
		return fmt.Errorf("invalid value for FinancialModelling: %v", v)
	}
}

type SourceFinancialModelling struct {
	APIKey string `json:"api_key"`
	// The stock exchange : AMEX, AMS, AQS, ASX, ATH, BER, BME, BRU, BSE, BUD, BUE, BVC, CAI, CBOE, CNQ, CPH, DFM, DOH, DUS, DXE, EGX, EURONEXT, HAM, HEL, HKSE, ICE, IOB, IST, JKT, JNB, JPX, KLS, KOE, KSC, KUW, LSE, MCX, MEX, MIL, MUN, NASDAQ, NEO, NSE, NYSE, NZE, OEM, OQX, OSL, OTC, PNK, PRA, RIS, SAO, SAU, SES, SET, SGO, SHH, SHZ, SIX, STO, STU, TAI, TLV, TSX, TSXV, TWO, VIE, VSE, WSE, XETRA
	Exchange *string `default:"NASDAQ" json:"exchange"`
	// Used in screener to filter out stocks with a market cap lower than the give marketcap
	Marketcaplowerthan *string `json:"marketcaplowerthan,omitempty"`
	// Used in screener to filter out stocks with a market cap more than the give marketcap
	Marketcapmorethan *string   `json:"marketcapmorethan,omitempty"`
	StartDate         time.Time `json:"start_date"`
	// For example 1min, 5min, 15min, 30min, 1hour, 4hour
	TimeFrame  *TimeFrame         `default:"4hour" json:"time_frame"`
	sourceType FinancialModelling `const:"financial-modelling" json:"sourceType"`
}

func (s SourceFinancialModelling) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceFinancialModelling) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceFinancialModelling) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceFinancialModelling) GetExchange() *string {
	if o == nil {
		return nil
	}
	return o.Exchange
}

func (o *SourceFinancialModelling) GetMarketcaplowerthan() *string {
	if o == nil {
		return nil
	}
	return o.Marketcaplowerthan
}

func (o *SourceFinancialModelling) GetMarketcapmorethan() *string {
	if o == nil {
		return nil
	}
	return o.Marketcapmorethan
}

func (o *SourceFinancialModelling) GetStartDate() time.Time {
	if o == nil {
		return time.Time{}
	}
	return o.StartDate
}

func (o *SourceFinancialModelling) GetTimeFrame() *TimeFrame {
	if o == nil {
		return nil
	}
	return o.TimeFrame
}

func (o *SourceFinancialModelling) GetSourceType() FinancialModelling {
	return FinancialModellingFinancialModelling
}
