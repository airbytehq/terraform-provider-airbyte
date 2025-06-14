// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// DestinationDynamodbDynamoDBRegion - The region of the DynamoDB.
type DestinationDynamodbDynamoDBRegion string

const (
	DestinationDynamodbDynamoDBRegionUnknown      DestinationDynamodbDynamoDBRegion = ""
	DestinationDynamodbDynamoDBRegionAfSouth1     DestinationDynamodbDynamoDBRegion = "af-south-1"
	DestinationDynamodbDynamoDBRegionApEast1      DestinationDynamodbDynamoDBRegion = "ap-east-1"
	DestinationDynamodbDynamoDBRegionApNortheast1 DestinationDynamodbDynamoDBRegion = "ap-northeast-1"
	DestinationDynamodbDynamoDBRegionApNortheast2 DestinationDynamodbDynamoDBRegion = "ap-northeast-2"
	DestinationDynamodbDynamoDBRegionApNortheast3 DestinationDynamodbDynamoDBRegion = "ap-northeast-3"
	DestinationDynamodbDynamoDBRegionApSouth1     DestinationDynamodbDynamoDBRegion = "ap-south-1"
	DestinationDynamodbDynamoDBRegionApSouth2     DestinationDynamodbDynamoDBRegion = "ap-south-2"
	DestinationDynamodbDynamoDBRegionApSoutheast1 DestinationDynamodbDynamoDBRegion = "ap-southeast-1"
	DestinationDynamodbDynamoDBRegionApSoutheast2 DestinationDynamodbDynamoDBRegion = "ap-southeast-2"
	DestinationDynamodbDynamoDBRegionApSoutheast3 DestinationDynamodbDynamoDBRegion = "ap-southeast-3"
	DestinationDynamodbDynamoDBRegionApSoutheast4 DestinationDynamodbDynamoDBRegion = "ap-southeast-4"
	DestinationDynamodbDynamoDBRegionCaCentral1   DestinationDynamodbDynamoDBRegion = "ca-central-1"
	DestinationDynamodbDynamoDBRegionCaWest1      DestinationDynamodbDynamoDBRegion = "ca-west-1"
	DestinationDynamodbDynamoDBRegionCnNorth1     DestinationDynamodbDynamoDBRegion = "cn-north-1"
	DestinationDynamodbDynamoDBRegionCnNorthwest1 DestinationDynamodbDynamoDBRegion = "cn-northwest-1"
	DestinationDynamodbDynamoDBRegionEuCentral1   DestinationDynamodbDynamoDBRegion = "eu-central-1"
	DestinationDynamodbDynamoDBRegionEuCentral2   DestinationDynamodbDynamoDBRegion = "eu-central-2"
	DestinationDynamodbDynamoDBRegionEuNorth1     DestinationDynamodbDynamoDBRegion = "eu-north-1"
	DestinationDynamodbDynamoDBRegionEuSouth1     DestinationDynamodbDynamoDBRegion = "eu-south-1"
	DestinationDynamodbDynamoDBRegionEuSouth2     DestinationDynamodbDynamoDBRegion = "eu-south-2"
	DestinationDynamodbDynamoDBRegionEuWest1      DestinationDynamodbDynamoDBRegion = "eu-west-1"
	DestinationDynamodbDynamoDBRegionEuWest2      DestinationDynamodbDynamoDBRegion = "eu-west-2"
	DestinationDynamodbDynamoDBRegionEuWest3      DestinationDynamodbDynamoDBRegion = "eu-west-3"
	DestinationDynamodbDynamoDBRegionIlCentral1   DestinationDynamodbDynamoDBRegion = "il-central-1"
	DestinationDynamodbDynamoDBRegionMeCentral1   DestinationDynamodbDynamoDBRegion = "me-central-1"
	DestinationDynamodbDynamoDBRegionMeSouth1     DestinationDynamodbDynamoDBRegion = "me-south-1"
	DestinationDynamodbDynamoDBRegionSaEast1      DestinationDynamodbDynamoDBRegion = "sa-east-1"
	DestinationDynamodbDynamoDBRegionUsEast1      DestinationDynamodbDynamoDBRegion = "us-east-1"
	DestinationDynamodbDynamoDBRegionUsEast2      DestinationDynamodbDynamoDBRegion = "us-east-2"
	DestinationDynamodbDynamoDBRegionUsGovEast1   DestinationDynamodbDynamoDBRegion = "us-gov-east-1"
	DestinationDynamodbDynamoDBRegionUsGovWest1   DestinationDynamodbDynamoDBRegion = "us-gov-west-1"
	DestinationDynamodbDynamoDBRegionUsWest1      DestinationDynamodbDynamoDBRegion = "us-west-1"
	DestinationDynamodbDynamoDBRegionUsWest2      DestinationDynamodbDynamoDBRegion = "us-west-2"
)

func (e DestinationDynamodbDynamoDBRegion) ToPointer() *DestinationDynamodbDynamoDBRegion {
	return &e
}
func (e *DestinationDynamodbDynamoDBRegion) UnmarshalJSON(data []byte) error {
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
		*e = DestinationDynamodbDynamoDBRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationDynamodbDynamoDBRegion: %v", v)
	}
}

type DestinationDynamodbDynamodb string

const (
	DestinationDynamodbDynamodbDynamodb DestinationDynamodbDynamodb = "dynamodb"
)

func (e DestinationDynamodbDynamodb) ToPointer() *DestinationDynamodbDynamodb {
	return &e
}
func (e *DestinationDynamodbDynamodb) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "dynamodb":
		*e = DestinationDynamodbDynamodb(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationDynamodbDynamodb: %v", v)
	}
}

type DestinationDynamodb struct {
	// The access key id to access the DynamoDB. Airbyte requires Read and Write permissions to the DynamoDB.
	AccessKeyID string `json:"access_key_id"`
	// This is your DynamoDB endpoint url.(if you are working with AWS DynamoDB, just leave empty).
	DynamodbEndpoint *string `default:"" json:"dynamodb_endpoint"`
	// The region of the DynamoDB.
	DynamodbRegion *DestinationDynamodbDynamoDBRegion `default:"" json:"dynamodb_region"`
	// The prefix to use when naming DynamoDB tables.
	DynamodbTableNamePrefix string `json:"dynamodb_table_name_prefix"`
	// The corresponding secret to the access key id.
	SecretAccessKey string                      `json:"secret_access_key"`
	destinationType DestinationDynamodbDynamodb `const:"dynamodb" json:"destinationType"`
}

func (d DestinationDynamodb) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationDynamodb) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationDynamodb) GetAccessKeyID() string {
	if o == nil {
		return ""
	}
	return o.AccessKeyID
}

func (o *DestinationDynamodb) GetDynamodbEndpoint() *string {
	if o == nil {
		return nil
	}
	return o.DynamodbEndpoint
}

func (o *DestinationDynamodb) GetDynamodbRegion() *DestinationDynamodbDynamoDBRegion {
	if o == nil {
		return nil
	}
	return o.DynamodbRegion
}

func (o *DestinationDynamodb) GetDynamodbTableNamePrefix() string {
	if o == nil {
		return ""
	}
	return o.DynamodbTableNamePrefix
}

func (o *DestinationDynamodb) GetSecretAccessKey() string {
	if o == nil {
		return ""
	}
	return o.SecretAccessKey
}

func (o *DestinationDynamodb) GetDestinationType() DestinationDynamodbDynamodb {
	return DestinationDynamodbDynamodbDynamodb
}
