// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationDuckdbUpdate struct {
	// Path to the .duckdb file, or the text 'md:' to connect to MotherDuck. The file will be placed inside that local mount. For more information check out our <a href="https://docs.airbyte.io/integrations/destinations/duckdb">docs</a>
	DestinationPath string `json:"destination_path"`
	// API key to use for authentication to a MotherDuck database.
	MotherduckAPIKey *string `json:"motherduck_api_key,omitempty"`
	// Database schema name, default for duckdb is 'main'.
	Schema *string `json:"schema,omitempty"`
}

func (o *DestinationDuckdbUpdate) GetDestinationPath() string {
	if o == nil {
		return ""
	}
	return o.DestinationPath
}

func (o *DestinationDuckdbUpdate) GetMotherduckAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.MotherduckAPIKey
}

func (o *DestinationDuckdbUpdate) GetSchema() *string {
	if o == nil {
		return nil
	}
	return o.Schema
}
