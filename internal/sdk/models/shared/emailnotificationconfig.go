// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

// EmailNotificationConfig - Configures an email notification.
type EmailNotificationConfig struct {
	Enabled *bool `json:"enabled,omitempty"`
}

func (o *EmailNotificationConfig) GetEnabled() *bool {
	if o == nil {
		return nil
	}
	return o.Enabled
}
