// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

type SourceConvexConvex string

const (
	SourceConvexConvexConvex SourceConvexConvex = "convex"
)

func (e SourceConvexConvex) ToPointer() *SourceConvexConvex {
	return &e
}

func (e *SourceConvexConvex) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "convex":
		*e = SourceConvexConvex(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceConvexConvex: %v", v)
	}
}

type SourceConvex struct {
	// API access key used to retrieve data from Convex.
	AccessKey     string             `json:"access_key"`
	DeploymentURL string             `json:"deployment_url"`
	SourceType    SourceConvexConvex `json:"sourceType"`
}