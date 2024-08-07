// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
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
	sourceType    SourceConvexConvex `const:"convex" json:"sourceType"`
}

func (s SourceConvex) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceConvex) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceConvex) GetAccessKey() string {
	if o == nil {
		return ""
	}
	return o.AccessKey
}

func (o *SourceConvex) GetDeploymentURL() string {
	if o == nil {
		return ""
	}
	return o.DeploymentURL
}

func (o *SourceConvex) GetSourceType() SourceConvexConvex {
	return SourceConvexConvexConvex
}
