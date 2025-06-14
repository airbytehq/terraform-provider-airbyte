// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
)

// Days - The number of days of data for market chart.
type Days string

const (
	DaysOne                      Days = "1"
	DaysSeven                    Days = "7"
	DaysFourteen                 Days = "14"
	DaysThirty                   Days = "30"
	DaysNinety                   Days = "90"
	DaysOneHundredAndEighty      Days = "180"
	DaysThreeHundredAndSixtyFive Days = "365"
	DaysMax                      Days = "max"
)

func (e Days) ToPointer() *Days {
	return &e
}
func (e *Days) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "1":
		fallthrough
	case "7":
		fallthrough
	case "14":
		fallthrough
	case "30":
		fallthrough
	case "90":
		fallthrough
	case "180":
		fallthrough
	case "365":
		fallthrough
	case "max":
		*e = Days(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Days: %v", v)
	}
}

type CoingeckoCoins string

const (
	CoingeckoCoinsCoingeckoCoins CoingeckoCoins = "coingecko-coins"
)

func (e CoingeckoCoins) ToPointer() *CoingeckoCoins {
	return &e
}
func (e *CoingeckoCoins) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "coingecko-coins":
		*e = CoingeckoCoins(v)
		return nil
	default:
		return fmt.Errorf("invalid value for CoingeckoCoins: %v", v)
	}
}

type SourceCoingeckoCoins struct {
	// API Key (for pro users)
	APIKey *string `json:"api_key,omitempty"`
	// CoinGecko coin ID (e.g. bitcoin). Can be retrieved from the
	// `/coins/list` endpoint.
	//
	CoinID string `json:"coin_id"`
	// The number of days of data for market chart.
	//
	Days *Days `default:"30" json:"days"`
	// The end date for the historical data stream in dd-mm-yyyy format.
	//
	EndDate *types.Date `json:"end_date,omitempty"`
	// The start date for the historical data stream in dd-mm-yyyy format.
	//
	StartDate types.Date `json:"start_date"`
	// The target currency of market data (e.g. usd, eur, jpy, etc.)
	//
	VsCurrency string         `json:"vs_currency"`
	sourceType CoingeckoCoins `const:"coingecko-coins" json:"sourceType"`
}

func (s SourceCoingeckoCoins) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCoingeckoCoins) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCoingeckoCoins) GetAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.APIKey
}

func (o *SourceCoingeckoCoins) GetCoinID() string {
	if o == nil {
		return ""
	}
	return o.CoinID
}

func (o *SourceCoingeckoCoins) GetDays() *Days {
	if o == nil {
		return nil
	}
	return o.Days
}

func (o *SourceCoingeckoCoins) GetEndDate() *types.Date {
	if o == nil {
		return nil
	}
	return o.EndDate
}

func (o *SourceCoingeckoCoins) GetStartDate() types.Date {
	if o == nil {
		return types.Date{}
	}
	return o.StartDate
}

func (o *SourceCoingeckoCoins) GetVsCurrency() string {
	if o == nil {
		return ""
	}
	return o.VsCurrency
}

func (o *SourceCoingeckoCoins) GetSourceType() CoingeckoCoins {
	return CoingeckoCoinsCoingeckoCoins
}
