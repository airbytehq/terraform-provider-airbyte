// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourcesResponse struct {
	Data     []SourceResponse `json:"data"`
	Next     *string          `json:"next,omitempty"`
	Previous *string          `json:"previous,omitempty"`
}

func (o *SourcesResponse) GetData() []SourceResponse {
	if o == nil {
		return []SourceResponse{}
	}
	return o.Data
}

func (o *SourcesResponse) GetNext() *string {
	if o == nil {
		return nil
	}
	return o.Next
}

func (o *SourcesResponse) GetPrevious() *string {
	if o == nil {
		return nil
	}
	return o.Previous
}
