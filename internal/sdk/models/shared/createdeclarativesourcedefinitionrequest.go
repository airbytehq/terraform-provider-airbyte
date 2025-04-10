// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type CreateDeclarativeSourceDefinitionRequest struct {
	Name string `json:"name"`
	// Low code CDK manifest JSON object
	Manifest DeclarativeManifest `json:"manifest"`
}

func (o *CreateDeclarativeSourceDefinitionRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *CreateDeclarativeSourceDefinitionRequest) GetManifest() DeclarativeManifest {
	if o == nil {
		return DeclarativeManifest{}
	}
	return o.Manifest
}
