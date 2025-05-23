// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DeclarativeSourceDefinitionsResponse struct {
	Previous *string                               `json:"previous,omitempty"`
	Next     *string                               `json:"next,omitempty"`
	Data     []DeclarativeSourceDefinitionResponse `json:"data"`
}

func (o *DeclarativeSourceDefinitionsResponse) GetPrevious() *string {
	if o == nil {
		return nil
	}
	return o.Previous
}

func (o *DeclarativeSourceDefinitionsResponse) GetNext() *string {
	if o == nil {
		return nil
	}
	return o.Next
}

func (o *DeclarativeSourceDefinitionsResponse) GetData() []DeclarativeSourceDefinitionResponse {
	if o == nil {
		return []DeclarativeSourceDefinitionResponse{}
	}
	return o.Data
}
