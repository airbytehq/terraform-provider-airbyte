// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type SourceThinkificCoursesUpdate struct {
	APIKey         string `json:"api_key"`
	XAuthSubdomain string `json:"X-Auth-Subdomain"`
}

func (o *SourceThinkificCoursesUpdate) GetAPIKey() string {
	if o == nil {
		return ""
	}
	return o.APIKey
}

func (o *SourceThinkificCoursesUpdate) GetXAuthSubdomain() string {
	if o == nil {
		return ""
	}
	return o.XAuthSubdomain
}
