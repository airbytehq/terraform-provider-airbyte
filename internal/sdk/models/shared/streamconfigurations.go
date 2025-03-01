// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

// StreamConfigurations - A list of configured stream options for a connection.
type StreamConfigurations struct {
	Streams []StreamConfiguration `json:"streams,omitempty"`
}

func (o *StreamConfigurations) GetStreams() []StreamConfiguration {
	if o == nil {
		return nil
	}
	return o.Streams
}
