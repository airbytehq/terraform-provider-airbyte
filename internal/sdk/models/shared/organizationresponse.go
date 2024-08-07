// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

// OrganizationResponse - Provides details of a single organization for a user.
type OrganizationResponse struct {
	Email            string `json:"email"`
	OrganizationID   string `json:"organizationId"`
	OrganizationName string `json:"organizationName"`
}

func (o *OrganizationResponse) GetEmail() string {
	if o == nil {
		return ""
	}
	return o.Email
}

func (o *OrganizationResponse) GetOrganizationID() string {
	if o == nil {
		return ""
	}
	return o.OrganizationID
}

func (o *OrganizationResponse) GetOrganizationName() string {
	if o == nil {
		return ""
	}
	return o.OrganizationName
}
