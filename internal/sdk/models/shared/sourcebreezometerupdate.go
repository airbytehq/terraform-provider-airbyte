// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceBreezometerUpdate struct {
	// Your API Access Key. See <a href="https://docs.breezometer.com/api-documentation/introduction/#authentication/">here</a>.
	APIKey string `json:"api_key"`
	// Number of days to forecast. Minimum 1, maximum 3. Valid for Polen and Weather Forecast streams.
	DaysToForecast *int64 `json:"days_to_forecast,omitempty"`
	// Number of hours retireve from Air Quality History stream. Minimum 1, maximum 720.
	HistoricHours *int64 `json:"historic_hours,omitempty"`
	// Number of hours to forecast. Minimum 1, maximum 96. Valid for Air Quality Forecast stream.
	HoursToForecast *int64 `json:"hours_to_forecast,omitempty"`
	// Latitude of the monitored location.
	Latitude string `json:"latitude"`
	// Longitude of the monitored location.
	Longitude string `json:"longitude"`
	// Desired radius from the location provided. Minimum 5, maximum 100. Valid for Wildfires streams.
	Radius *int64 `json:"radius,omitempty"`
}

func (o *SourceBreezometerUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceBreezometerUpdate) GetDaysToForecast() *int64 {
	if o == nil {
		return nil
	}
	return o.DaysToForecast
}

func (o *SourceBreezometerUpdate) GetHistoricHours() *int64 {
	if o == nil {
		return nil
	}
	return o.HistoricHours
}

func (o *SourceBreezometerUpdate) GetHoursToForecast() *int64 {
	if o == nil {
		return nil
	}
	return o.HoursToForecast
}

func (o *SourceBreezometerUpdate) GetLatitude() string {
	if o == nil {
		return ""
	}
	return o.Latitude
}

func (o *SourceBreezometerUpdate) GetLongitude() string {
	if o == nil {
		return ""
	}
	return o.Longitude
}

func (o *SourceBreezometerUpdate) GetRadius() *int64 {
	if o == nil {
		return nil
	}
	return o.Radius
}
