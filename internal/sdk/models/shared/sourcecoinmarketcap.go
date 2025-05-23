// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// DataType - /latest: Latest market ticker quotes and averages for cryptocurrencies and exchanges. /historical: Intervals of historic market data like OHLCV data or data for use in charting libraries. See <a href="https://coinmarketcap.com/api/documentation/v1/#section/Endpoint-Overview">here</a>.
type DataType string

const (
	DataTypeLatest     DataType = "latest"
	DataTypeHistorical DataType = "historical"
)

func (e DataType) ToPointer() *DataType {
	return &e
}
func (e *DataType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "latest":
		fallthrough
	case "historical":
		*e = DataType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DataType: %v", v)
	}
}

type Coinmarketcap string

const (
	CoinmarketcapCoinmarketcap Coinmarketcap = "coinmarketcap"
)

func (e Coinmarketcap) ToPointer() *Coinmarketcap {
	return &e
}
func (e *Coinmarketcap) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "coinmarketcap":
		*e = Coinmarketcap(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Coinmarketcap: %v", v)
	}
}

type SourceCoinmarketcap struct {
	// Your API Key. See <a href="https://coinmarketcap.com/api/documentation/v1/#section/Authentication">here</a>. The token is case sensitive.
	APIKey string `json:"api_key"`
	// /latest: Latest market ticker quotes and averages for cryptocurrencies and exchanges. /historical: Intervals of historic market data like OHLCV data or data for use in charting libraries. See <a href="https://coinmarketcap.com/api/documentation/v1/#section/Endpoint-Overview">here</a>.
	DataType DataType `json:"data_type"`
	// Cryptocurrency symbols. (only used for quotes stream)
	Symbols    []string      `json:"symbols,omitempty"`
	sourceType Coinmarketcap `const:"coinmarketcap" json:"sourceType"`
}

func (s SourceCoinmarketcap) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceCoinmarketcap) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceCoinmarketcap) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceCoinmarketcap) GetDataType() DataType {
	if o == nil {
		return DataType("")
	}
	return o.DataType
}

func (o *SourceCoinmarketcap) GetSymbols() []string {
	if o == nil {
		return nil
	}
	return o.Symbols
}

func (o *SourceCoinmarketcap) GetSourceType() Coinmarketcap {
	return CoinmarketcapCoinmarketcap
}
