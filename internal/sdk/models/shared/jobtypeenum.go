// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

// JobTypeEnum - Enum that describes the different types of jobs that the platform runs.
type JobTypeEnum string

const (
	JobTypeEnumSync    JobTypeEnum = "sync"
	JobTypeEnumReset   JobTypeEnum = "reset"
	JobTypeEnumRefresh JobTypeEnum = "refresh"
	JobTypeEnumClear   JobTypeEnum = "clear"
)

func (e JobTypeEnum) ToPointer() *JobTypeEnum {
	return &e
}
func (e *JobTypeEnum) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "sync":
		fallthrough
	case "reset":
		fallthrough
	case "refresh":
		fallthrough
	case "clear":
		*e = JobTypeEnum(v)
		return nil
	default:
		return fmt.Errorf("invalid value for JobTypeEnum: %v", v)
	}
}
