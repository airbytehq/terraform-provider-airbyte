// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

// NamespaceDefinitionEnum - Define the location where the data will be stored in the destination
type NamespaceDefinitionEnum string

const (
	NamespaceDefinitionEnumSource       NamespaceDefinitionEnum = "source"
	NamespaceDefinitionEnumDestination  NamespaceDefinitionEnum = "destination"
	NamespaceDefinitionEnumCustomFormat NamespaceDefinitionEnum = "custom_format"
)

func (e NamespaceDefinitionEnum) ToPointer() *NamespaceDefinitionEnum {
	return &e
}
func (e *NamespaceDefinitionEnum) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "source":
		fallthrough
	case "destination":
		fallthrough
	case "custom_format":
		*e = NamespaceDefinitionEnum(v)
		return nil
	default:
		return fmt.Errorf("invalid value for NamespaceDefinitionEnum: %v", v)
	}
}
