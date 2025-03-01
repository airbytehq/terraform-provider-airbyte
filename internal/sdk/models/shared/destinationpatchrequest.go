// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationPatchRequest struct {
	Name *string `json:"name,omitempty"`
	// The values required to configure the destination.
	Configuration any `json:"configuration,omitempty"`
}

func (o *DestinationPatchRequest) GetName() *string {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *DestinationPatchRequest) GetConfiguration() any {
	if o == nil {
		return nil
	}
	return o.Configuration
}
