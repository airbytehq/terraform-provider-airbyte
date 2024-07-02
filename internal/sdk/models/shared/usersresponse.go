// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

// UsersResponse - List/Array of multiple users in an organization
type UsersResponse struct {
	Data []UserResponse `json:"data"`
}

func (o *UsersResponse) GetData() []UserResponse {
	if o == nil {
		return []UserResponse{}
	}
	return o.Data
}