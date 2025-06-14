// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type Motherduck string

const (
	MotherduckMotherduck Motherduck = "motherduck"
)

func (e Motherduck) ToPointer() *Motherduck {
	return &e
}
func (e *Motherduck) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "motherduck":
		*e = Motherduck(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Motherduck: %v", v)
	}
}

type DestinationMotherduck struct {
	// Path to a .duckdb file or 'md:<DATABASE_NAME>' to connect to a MotherDuck database. If 'md:' is specified without a database name, the default MotherDuck database name ('my_db') will be used.
	DestinationPath *string `default:"md:" json:"destination_path"`
	// API access token to use for authentication to a MotherDuck database.
	MotherduckAPIKey string `json:"motherduck_api_key"`
	// Database schema name, defaults to 'main' if not specified.
	Schema          *string    `json:"schema,omitempty"`
	destinationType Motherduck `const:"motherduck" json:"destinationType"`
}

func (d DestinationMotherduck) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMotherduck) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMotherduck) GetDestinationPath() *string {
	if o == nil {
		return nil
	}
	return o.DestinationPath
}

func (o *DestinationMotherduck) GetMotherduckAPIKey() string {
	if o == nil {
		return ""
	}
	return o.MotherduckAPIKey
}

func (o *DestinationMotherduck) GetSchema() *string {
	if o == nil {
		return nil
	}
	return o.Schema
}

func (o *DestinationMotherduck) GetDestinationType() Motherduck {
	return MotherduckMotherduck
}
