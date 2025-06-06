// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

type StreamMapperType string

const (
	StreamMapperTypeHashing       StreamMapperType = "hashing"
	StreamMapperTypeFieldRenaming StreamMapperType = "field-renaming"
	StreamMapperTypeRowFiltering  StreamMapperType = "row-filtering"
	StreamMapperTypeEncryption    StreamMapperType = "encryption"
)

func (e StreamMapperType) ToPointer() *StreamMapperType {
	return &e
}
func (e *StreamMapperType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "hashing":
		fallthrough
	case "field-renaming":
		fallthrough
	case "row-filtering":
		fallthrough
	case "encryption":
		*e = StreamMapperType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for StreamMapperType: %v", v)
	}
}
