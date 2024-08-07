// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// DynamoDBRegion - The region of the DynamoDB.
type DynamoDBRegion string

const (
	DynamoDBRegionUnknown      DynamoDBRegion = ""
	DynamoDBRegionAfSouth1     DynamoDBRegion = "af-south-1"
	DynamoDBRegionApEast1      DynamoDBRegion = "ap-east-1"
	DynamoDBRegionApNortheast1 DynamoDBRegion = "ap-northeast-1"
	DynamoDBRegionApNortheast2 DynamoDBRegion = "ap-northeast-2"
	DynamoDBRegionApNortheast3 DynamoDBRegion = "ap-northeast-3"
	DynamoDBRegionApSouth1     DynamoDBRegion = "ap-south-1"
	DynamoDBRegionApSouth2     DynamoDBRegion = "ap-south-2"
	DynamoDBRegionApSoutheast1 DynamoDBRegion = "ap-southeast-1"
	DynamoDBRegionApSoutheast2 DynamoDBRegion = "ap-southeast-2"
	DynamoDBRegionApSoutheast3 DynamoDBRegion = "ap-southeast-3"
	DynamoDBRegionApSoutheast4 DynamoDBRegion = "ap-southeast-4"
	DynamoDBRegionCaCentral1   DynamoDBRegion = "ca-central-1"
	DynamoDBRegionCaWest1      DynamoDBRegion = "ca-west-1"
	DynamoDBRegionCnNorth1     DynamoDBRegion = "cn-north-1"
	DynamoDBRegionCnNorthwest1 DynamoDBRegion = "cn-northwest-1"
	DynamoDBRegionEuCentral1   DynamoDBRegion = "eu-central-1"
	DynamoDBRegionEuCentral2   DynamoDBRegion = "eu-central-2"
	DynamoDBRegionEuNorth1     DynamoDBRegion = "eu-north-1"
	DynamoDBRegionEuSouth1     DynamoDBRegion = "eu-south-1"
	DynamoDBRegionEuSouth2     DynamoDBRegion = "eu-south-2"
	DynamoDBRegionEuWest1      DynamoDBRegion = "eu-west-1"
	DynamoDBRegionEuWest2      DynamoDBRegion = "eu-west-2"
	DynamoDBRegionEuWest3      DynamoDBRegion = "eu-west-3"
	DynamoDBRegionIlCentral1   DynamoDBRegion = "il-central-1"
	DynamoDBRegionMeCentral1   DynamoDBRegion = "me-central-1"
	DynamoDBRegionMeSouth1     DynamoDBRegion = "me-south-1"
	DynamoDBRegionSaEast1      DynamoDBRegion = "sa-east-1"
	DynamoDBRegionUsEast1      DynamoDBRegion = "us-east-1"
	DynamoDBRegionUsEast2      DynamoDBRegion = "us-east-2"
	DynamoDBRegionUsGovEast1   DynamoDBRegion = "us-gov-east-1"
	DynamoDBRegionUsGovWest1   DynamoDBRegion = "us-gov-west-1"
	DynamoDBRegionUsWest1      DynamoDBRegion = "us-west-1"
	DynamoDBRegionUsWest2      DynamoDBRegion = "us-west-2"
)

func (e DynamoDBRegion) ToPointer() *DynamoDBRegion {
	return &e
}
func (e *DynamoDBRegion) UnmarshalJSON(data []byte) error {
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
		*e = DynamoDBRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DynamoDBRegion: %v", v)
	}
}

type DestinationDynamodbUpdate struct {
	// The access key id to access the DynamoDB. Airbyte requires Read and Write permissions to the DynamoDB.
	AccessKeyID string `json:"access_key_id"`
	// This is your DynamoDB endpoint url.(if you are working with AWS DynamoDB, just leave empty).
	DynamodbEndpoint *string `default:"" json:"dynamodb_endpoint"`
	// The region of the DynamoDB.
	DynamodbRegion *DynamoDBRegion `default:"" json:"dynamodb_region"`
	// The prefix to use when naming DynamoDB tables.
	DynamodbTableNamePrefix string `json:"dynamodb_table_name_prefix"`
	// The corresponding secret to the access key id.
	SecretAccessKey string `json:"secret_access_key"`
}

func (d DestinationDynamodbUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationDynamodbUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationDynamodbUpdate) GetAccessKeyID() string {
	if o == nil {
		return ""
	}
	return o.AccessKeyID
}

func (o *DestinationDynamodbUpdate) GetDynamodbEndpoint() *string {
	if o == nil {
		return nil
	}
	return o.DynamodbEndpoint
}

func (o *DestinationDynamodbUpdate) GetDynamodbRegion() *DynamoDBRegion {
	if o == nil {
		return nil
	}
	return o.DynamodbRegion
}

func (o *DestinationDynamodbUpdate) GetDynamodbTableNamePrefix() string {
	if o == nil {
		return ""
	}
	return o.DynamodbTableNamePrefix
}

func (o *DestinationDynamodbUpdate) GetSecretAccessKey() string {
	if o == nil {
		return ""
	}
	return o.SecretAccessKey
}
