// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceWaiteraidUpdate struct {
	// Your WaiterAid API key, obtained from API request with Username and Password
	AuthHash string `json:"auth_hash"`
	// Your WaiterAid restaurant id from API request to getRestaurants
	Restid string `json:"restid"`
	// Start getting data from that date.
	StartDate string `json:"start_date"`
}

func (o *SourceWaiteraidUpdate) GetAuthHash() string {
	if o == nil {
		return ""
	}
	return o.AuthHash
}

func (o *SourceWaiteraidUpdate) GetRestid() string {
	if o == nil {
		return ""
	}
	return o.Restid
}

func (o *SourceWaiteraidUpdate) GetStartDate() string {
	if o == nil {
		return ""
	}
	return o.StartDate
}
