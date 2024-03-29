// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/pkg/utils"
)

// SourceDynamodbUpdateDynamodbRegion - The region of the Dynamodb database
type SourceDynamodbUpdateDynamodbRegion string

const (
	SourceDynamodbUpdateDynamodbRegionUnknown      SourceDynamodbUpdateDynamodbRegion = ""
	SourceDynamodbUpdateDynamodbRegionAfSouth1     SourceDynamodbUpdateDynamodbRegion = "af-south-1"
	SourceDynamodbUpdateDynamodbRegionApEast1      SourceDynamodbUpdateDynamodbRegion = "ap-east-1"
	SourceDynamodbUpdateDynamodbRegionApNortheast1 SourceDynamodbUpdateDynamodbRegion = "ap-northeast-1"
	SourceDynamodbUpdateDynamodbRegionApNortheast2 SourceDynamodbUpdateDynamodbRegion = "ap-northeast-2"
	SourceDynamodbUpdateDynamodbRegionApNortheast3 SourceDynamodbUpdateDynamodbRegion = "ap-northeast-3"
	SourceDynamodbUpdateDynamodbRegionApSouth1     SourceDynamodbUpdateDynamodbRegion = "ap-south-1"
	SourceDynamodbUpdateDynamodbRegionApSouth2     SourceDynamodbUpdateDynamodbRegion = "ap-south-2"
	SourceDynamodbUpdateDynamodbRegionApSoutheast1 SourceDynamodbUpdateDynamodbRegion = "ap-southeast-1"
	SourceDynamodbUpdateDynamodbRegionApSoutheast2 SourceDynamodbUpdateDynamodbRegion = "ap-southeast-2"
	SourceDynamodbUpdateDynamodbRegionApSoutheast3 SourceDynamodbUpdateDynamodbRegion = "ap-southeast-3"
	SourceDynamodbUpdateDynamodbRegionApSoutheast4 SourceDynamodbUpdateDynamodbRegion = "ap-southeast-4"
	SourceDynamodbUpdateDynamodbRegionCaCentral1   SourceDynamodbUpdateDynamodbRegion = "ca-central-1"
	SourceDynamodbUpdateDynamodbRegionCaWest1      SourceDynamodbUpdateDynamodbRegion = "ca-west-1"
	SourceDynamodbUpdateDynamodbRegionCnNorth1     SourceDynamodbUpdateDynamodbRegion = "cn-north-1"
	SourceDynamodbUpdateDynamodbRegionCnNorthwest1 SourceDynamodbUpdateDynamodbRegion = "cn-northwest-1"
	SourceDynamodbUpdateDynamodbRegionEuCentral1   SourceDynamodbUpdateDynamodbRegion = "eu-central-1"
	SourceDynamodbUpdateDynamodbRegionEuCentral2   SourceDynamodbUpdateDynamodbRegion = "eu-central-2"
	SourceDynamodbUpdateDynamodbRegionEuNorth1     SourceDynamodbUpdateDynamodbRegion = "eu-north-1"
	SourceDynamodbUpdateDynamodbRegionEuSouth1     SourceDynamodbUpdateDynamodbRegion = "eu-south-1"
	SourceDynamodbUpdateDynamodbRegionEuSouth2     SourceDynamodbUpdateDynamodbRegion = "eu-south-2"
	SourceDynamodbUpdateDynamodbRegionEuWest1      SourceDynamodbUpdateDynamodbRegion = "eu-west-1"
	SourceDynamodbUpdateDynamodbRegionEuWest2      SourceDynamodbUpdateDynamodbRegion = "eu-west-2"
	SourceDynamodbUpdateDynamodbRegionEuWest3      SourceDynamodbUpdateDynamodbRegion = "eu-west-3"
	SourceDynamodbUpdateDynamodbRegionIlCentral1   SourceDynamodbUpdateDynamodbRegion = "il-central-1"
	SourceDynamodbUpdateDynamodbRegionMeCentral1   SourceDynamodbUpdateDynamodbRegion = "me-central-1"
	SourceDynamodbUpdateDynamodbRegionMeSouth1     SourceDynamodbUpdateDynamodbRegion = "me-south-1"
	SourceDynamodbUpdateDynamodbRegionSaEast1      SourceDynamodbUpdateDynamodbRegion = "sa-east-1"
	SourceDynamodbUpdateDynamodbRegionUsEast1      SourceDynamodbUpdateDynamodbRegion = "us-east-1"
	SourceDynamodbUpdateDynamodbRegionUsEast2      SourceDynamodbUpdateDynamodbRegion = "us-east-2"
	SourceDynamodbUpdateDynamodbRegionUsGovEast1   SourceDynamodbUpdateDynamodbRegion = "us-gov-east-1"
	SourceDynamodbUpdateDynamodbRegionUsGovWest1   SourceDynamodbUpdateDynamodbRegion = "us-gov-west-1"
	SourceDynamodbUpdateDynamodbRegionUsWest1      SourceDynamodbUpdateDynamodbRegion = "us-west-1"
	SourceDynamodbUpdateDynamodbRegionUsWest2      SourceDynamodbUpdateDynamodbRegion = "us-west-2"
)

func (e SourceDynamodbUpdateDynamodbRegion) ToPointer() *SourceDynamodbUpdateDynamodbRegion {
	return &e
}

func (e *SourceDynamodbUpdateDynamodbRegion) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "":
		fallthrough
	case "af-south-1":
		fallthrough
	case "ap-east-1":
		fallthrough
	case "ap-northeast-1":
		fallthrough
	case "ap-northeast-2":
		fallthrough
	case "ap-northeast-3":
		fallthrough
	case "ap-south-1":
		fallthrough
	case "ap-south-2":
		fallthrough
	case "ap-southeast-1":
		fallthrough
	case "ap-southeast-2":
		fallthrough
	case "ap-southeast-3":
		fallthrough
	case "ap-southeast-4":
		fallthrough
	case "ca-central-1":
		fallthrough
	case "ca-west-1":
		fallthrough
	case "cn-north-1":
		fallthrough
	case "cn-northwest-1":
		fallthrough
	case "eu-central-1":
		fallthrough
	case "eu-central-2":
		fallthrough
	case "eu-north-1":
		fallthrough
	case "eu-south-1":
		fallthrough
	case "eu-south-2":
		fallthrough
	case "eu-west-1":
		fallthrough
	case "eu-west-2":
		fallthrough
	case "eu-west-3":
		fallthrough
	case "il-central-1":
		fallthrough
	case "me-central-1":
		fallthrough
	case "me-south-1":
		fallthrough
	case "sa-east-1":
		fallthrough
	case "us-east-1":
		fallthrough
	case "us-east-2":
		fallthrough
	case "us-gov-east-1":
		fallthrough
	case "us-gov-west-1":
		fallthrough
	case "us-west-1":
		fallthrough
	case "us-west-2":
		*e = SourceDynamodbUpdateDynamodbRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceDynamodbUpdateDynamodbRegion: %v", v)
	}
}

type SourceDynamodbUpdate struct {
	// The access key id to access Dynamodb. Airbyte requires read permissions to the database
	AccessKeyID string `json:"access_key_id"`
	// the URL of the Dynamodb database
	Endpoint *string `default:"" json:"endpoint"`
	// The region of the Dynamodb database
	Region *SourceDynamodbUpdateDynamodbRegion `default:"" json:"region"`
	// Comma separated reserved attribute names present in your tables
	ReservedAttributeNames *string `json:"reserved_attribute_names,omitempty"`
	// The corresponding secret to the access key id.
	SecretAccessKey string `json:"secret_access_key"`
}

func (s SourceDynamodbUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceDynamodbUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *SourceDynamodbUpdate) GetAccessKeyID() string {
	if o == nil {
		return ""
	}
	return o.AccessKeyID
}

func (o *SourceDynamodbUpdate) GetEndpoint() *string {
	if o == nil {
		return nil
	}
	return o.Endpoint
}

func (o *SourceDynamodbUpdate) GetRegion() *SourceDynamodbUpdateDynamodbRegion {
	if o == nil {
		return nil
	}
	return o.Region
}

func (o *SourceDynamodbUpdate) GetReservedAttributeNames() *string {
	if o == nil {
		return nil
	}
	return o.ReservedAttributeNames
}

func (o *SourceDynamodbUpdate) GetSecretAccessKey() string {
	if o == nil {
		return ""
	}
	return o.SecretAccessKey
}
