// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

// DestinationAwsDatalakeUpdateSchemasCredentialsTitle - Name of the credentials
type DestinationAwsDatalakeUpdateSchemasCredentialsTitle string

const (
	DestinationAwsDatalakeUpdateSchemasCredentialsTitleIamUser DestinationAwsDatalakeUpdateSchemasCredentialsTitle = "IAM User"
)

func (e DestinationAwsDatalakeUpdateSchemasCredentialsTitle) ToPointer() *DestinationAwsDatalakeUpdateSchemasCredentialsTitle {
	return &e
}
func (e *DestinationAwsDatalakeUpdateSchemasCredentialsTitle) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "IAM User":
		*e = DestinationAwsDatalakeUpdateSchemasCredentialsTitle(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateSchemasCredentialsTitle: %v", v)
	}
}

type DestinationAwsDatalakeUpdateIAMUser struct {
	// AWS User Access Key Id
	AwsAccessKeyID string `json:"aws_access_key_id"`
	// Secret Access Key
	AwsSecretAccessKey string `json:"aws_secret_access_key"`
	// Name of the credentials
	credentialsTitle *DestinationAwsDatalakeUpdateSchemasCredentialsTitle `const:"IAM User" json:"credentials_title"`
}

func (d DestinationAwsDatalakeUpdateIAMUser) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAwsDatalakeUpdateIAMUser) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAwsDatalakeUpdateIAMUser) GetAwsAccessKeyID() string {
	if o == nil {
		return ""
	}
	return o.AwsAccessKeyID
}

func (o *DestinationAwsDatalakeUpdateIAMUser) GetAwsSecretAccessKey() string {
	if o == nil {
		return ""
	}
	return o.AwsSecretAccessKey
}

func (o *DestinationAwsDatalakeUpdateIAMUser) GetCredentialsTitle() *DestinationAwsDatalakeUpdateSchemasCredentialsTitle {
	return DestinationAwsDatalakeUpdateSchemasCredentialsTitleIamUser.ToPointer()
}

// DestinationAwsDatalakeUpdateCredentialsTitle - Name of the credentials
type DestinationAwsDatalakeUpdateCredentialsTitle string

const (
	DestinationAwsDatalakeUpdateCredentialsTitleIamRole DestinationAwsDatalakeUpdateCredentialsTitle = "IAM Role"
)

func (e DestinationAwsDatalakeUpdateCredentialsTitle) ToPointer() *DestinationAwsDatalakeUpdateCredentialsTitle {
	return &e
}
func (e *DestinationAwsDatalakeUpdateCredentialsTitle) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "IAM Role":
		*e = DestinationAwsDatalakeUpdateCredentialsTitle(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateCredentialsTitle: %v", v)
	}
}

type DestinationAwsDatalakeUpdateIAMRole struct {
	// Name of the credentials
	credentialsTitle *DestinationAwsDatalakeUpdateCredentialsTitle `const:"IAM Role" json:"credentials_title"`
	// Will assume this role to write data to s3
	RoleArn string `json:"role_arn"`
}

func (d DestinationAwsDatalakeUpdateIAMRole) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAwsDatalakeUpdateIAMRole) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAwsDatalakeUpdateIAMRole) GetCredentialsTitle() *DestinationAwsDatalakeUpdateCredentialsTitle {
	return DestinationAwsDatalakeUpdateCredentialsTitleIamRole.ToPointer()
}

func (o *DestinationAwsDatalakeUpdateIAMRole) GetRoleArn() string {
	if o == nil {
		return ""
	}
	return o.RoleArn
}

type DestinationAwsDatalakeUpdateAuthenticationModeType string

const (
	DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMRole DestinationAwsDatalakeUpdateAuthenticationModeType = "destination-aws-datalake-update_IAM Role"
	DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMUser DestinationAwsDatalakeUpdateAuthenticationModeType = "destination-aws-datalake-update_IAM User"
)

// DestinationAwsDatalakeUpdateAuthenticationMode - Choose How to Authenticate to AWS.
type DestinationAwsDatalakeUpdateAuthenticationMode struct {
	DestinationAwsDatalakeUpdateIAMRole *DestinationAwsDatalakeUpdateIAMRole `queryParam:"inline"`
	DestinationAwsDatalakeUpdateIAMUser *DestinationAwsDatalakeUpdateIAMUser `queryParam:"inline"`

	Type DestinationAwsDatalakeUpdateAuthenticationModeType
}

func CreateDestinationAwsDatalakeUpdateAuthenticationModeDestinationAwsDatalakeUpdateIAMRole(destinationAwsDatalakeUpdateIAMRole DestinationAwsDatalakeUpdateIAMRole) DestinationAwsDatalakeUpdateAuthenticationMode {
	typ := DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMRole

	return DestinationAwsDatalakeUpdateAuthenticationMode{
		DestinationAwsDatalakeUpdateIAMRole: &destinationAwsDatalakeUpdateIAMRole,
		Type:                                typ,
	}
}

func CreateDestinationAwsDatalakeUpdateAuthenticationModeDestinationAwsDatalakeUpdateIAMUser(destinationAwsDatalakeUpdateIAMUser DestinationAwsDatalakeUpdateIAMUser) DestinationAwsDatalakeUpdateAuthenticationMode {
	typ := DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMUser

	return DestinationAwsDatalakeUpdateAuthenticationMode{
		DestinationAwsDatalakeUpdateIAMUser: &destinationAwsDatalakeUpdateIAMUser,
		Type:                                typ,
	}
}

func (u *DestinationAwsDatalakeUpdateAuthenticationMode) UnmarshalJSON(data []byte) error {

	var destinationAwsDatalakeUpdateIAMRole DestinationAwsDatalakeUpdateIAMRole = DestinationAwsDatalakeUpdateIAMRole{}
	if err := utils.UnmarshalJSON(data, &destinationAwsDatalakeUpdateIAMRole, "", true, true); err == nil {
		u.DestinationAwsDatalakeUpdateIAMRole = &destinationAwsDatalakeUpdateIAMRole
		u.Type = DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMRole
		return nil
	}

	var destinationAwsDatalakeUpdateIAMUser DestinationAwsDatalakeUpdateIAMUser = DestinationAwsDatalakeUpdateIAMUser{}
	if err := utils.UnmarshalJSON(data, &destinationAwsDatalakeUpdateIAMUser, "", true, true); err == nil {
		u.DestinationAwsDatalakeUpdateIAMUser = &destinationAwsDatalakeUpdateIAMUser
		u.Type = DestinationAwsDatalakeUpdateAuthenticationModeTypeDestinationAwsDatalakeUpdateIAMUser
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationAwsDatalakeUpdateAuthenticationMode", string(data))
}

func (u DestinationAwsDatalakeUpdateAuthenticationMode) MarshalJSON() ([]byte, error) {
	if u.DestinationAwsDatalakeUpdateIAMRole != nil {
		return utils.MarshalJSON(u.DestinationAwsDatalakeUpdateIAMRole, "", true)
	}

	if u.DestinationAwsDatalakeUpdateIAMUser != nil {
		return utils.MarshalJSON(u.DestinationAwsDatalakeUpdateIAMUser, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationAwsDatalakeUpdateAuthenticationMode: all fields are null")
}

// DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional - The compression algorithm used to compress data.
type DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional string

const (
	DestinationAwsDatalakeUpdateSchemasCompressionCodecOptionalUncompressed DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional = "UNCOMPRESSED"
	DestinationAwsDatalakeUpdateSchemasCompressionCodecOptionalSnappy       DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional = "SNAPPY"
	DestinationAwsDatalakeUpdateSchemasCompressionCodecOptionalGzip         DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional = "GZIP"
	DestinationAwsDatalakeUpdateSchemasCompressionCodecOptionalZstd         DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional = "ZSTD"
)

func (e DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional) ToPointer() *DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional {
	return &e
}
func (e *DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "UNCOMPRESSED":
		fallthrough
	case "SNAPPY":
		fallthrough
	case "GZIP":
		fallthrough
	case "ZSTD":
		*e = DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional: %v", v)
	}
}

type DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard string

const (
	DestinationAwsDatalakeUpdateSchemasFormatTypeWildcardParquet DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard = "Parquet"
)

func (e DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard) ToPointer() *DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard {
	return &e
}
func (e *DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Parquet":
		*e = DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard: %v", v)
	}
}

type DestinationAwsDatalakeUpdateParquetColumnarStorage struct {
	// The compression algorithm used to compress data.
	CompressionCodec *DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional `default:"SNAPPY" json:"compression_codec"`
	FormatType       *DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard       `default:"Parquet" json:"format_type"`
}

func (d DestinationAwsDatalakeUpdateParquetColumnarStorage) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAwsDatalakeUpdateParquetColumnarStorage) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAwsDatalakeUpdateParquetColumnarStorage) GetCompressionCodec() *DestinationAwsDatalakeUpdateSchemasCompressionCodecOptional {
	if o == nil {
		return nil
	}
	return o.CompressionCodec
}

func (o *DestinationAwsDatalakeUpdateParquetColumnarStorage) GetFormatType() *DestinationAwsDatalakeUpdateSchemasFormatTypeWildcard {
	if o == nil {
		return nil
	}
	return o.FormatType
}

// DestinationAwsDatalakeUpdateCompressionCodecOptional - The compression algorithm used to compress data.
type DestinationAwsDatalakeUpdateCompressionCodecOptional string

const (
	DestinationAwsDatalakeUpdateCompressionCodecOptionalUncompressed DestinationAwsDatalakeUpdateCompressionCodecOptional = "UNCOMPRESSED"
	DestinationAwsDatalakeUpdateCompressionCodecOptionalGzip         DestinationAwsDatalakeUpdateCompressionCodecOptional = "GZIP"
)

func (e DestinationAwsDatalakeUpdateCompressionCodecOptional) ToPointer() *DestinationAwsDatalakeUpdateCompressionCodecOptional {
	return &e
}
func (e *DestinationAwsDatalakeUpdateCompressionCodecOptional) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "UNCOMPRESSED":
		fallthrough
	case "GZIP":
		*e = DestinationAwsDatalakeUpdateCompressionCodecOptional(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateCompressionCodecOptional: %v", v)
	}
}

type DestinationAwsDatalakeUpdateFormatTypeWildcard string

const (
	DestinationAwsDatalakeUpdateFormatTypeWildcardJsonl DestinationAwsDatalakeUpdateFormatTypeWildcard = "JSONL"
)

func (e DestinationAwsDatalakeUpdateFormatTypeWildcard) ToPointer() *DestinationAwsDatalakeUpdateFormatTypeWildcard {
	return &e
}
func (e *DestinationAwsDatalakeUpdateFormatTypeWildcard) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "JSONL":
		*e = DestinationAwsDatalakeUpdateFormatTypeWildcard(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateFormatTypeWildcard: %v", v)
	}
}

type DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON struct {
	// The compression algorithm used to compress data.
	CompressionCodec *DestinationAwsDatalakeUpdateCompressionCodecOptional `default:"UNCOMPRESSED" json:"compression_codec"`
	FormatType       *DestinationAwsDatalakeUpdateFormatTypeWildcard       `default:"JSONL" json:"format_type"`
}

func (d DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON) GetCompressionCodec() *DestinationAwsDatalakeUpdateCompressionCodecOptional {
	if o == nil {
		return nil
	}
	return o.CompressionCodec
}

func (o *DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON) GetFormatType() *DestinationAwsDatalakeUpdateFormatTypeWildcard {
	if o == nil {
		return nil
	}
	return o.FormatType
}

type DestinationAwsDatalakeUpdateOutputFormatWildcardType string

const (
	DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON DestinationAwsDatalakeUpdateOutputFormatWildcardType = "destination-aws-datalake-update_JSON Lines: Newline-delimited JSON"
	DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateParquetColumnarStorage        DestinationAwsDatalakeUpdateOutputFormatWildcardType = "destination-aws-datalake-update_Parquet: Columnar Storage"
)

// DestinationAwsDatalakeUpdateOutputFormatWildcard - Format of the data output.
type DestinationAwsDatalakeUpdateOutputFormatWildcard struct {
	DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON *DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON `queryParam:"inline"`
	DestinationAwsDatalakeUpdateParquetColumnarStorage        *DestinationAwsDatalakeUpdateParquetColumnarStorage        `queryParam:"inline"`

	Type DestinationAwsDatalakeUpdateOutputFormatWildcardType
}

func CreateDestinationAwsDatalakeUpdateOutputFormatWildcardDestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON(destinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON) DestinationAwsDatalakeUpdateOutputFormatWildcard {
	typ := DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON

	return DestinationAwsDatalakeUpdateOutputFormatWildcard{
		DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON: &destinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON,
		Type: typ,
	}
}

func CreateDestinationAwsDatalakeUpdateOutputFormatWildcardDestinationAwsDatalakeUpdateParquetColumnarStorage(destinationAwsDatalakeUpdateParquetColumnarStorage DestinationAwsDatalakeUpdateParquetColumnarStorage) DestinationAwsDatalakeUpdateOutputFormatWildcard {
	typ := DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateParquetColumnarStorage

	return DestinationAwsDatalakeUpdateOutputFormatWildcard{
		DestinationAwsDatalakeUpdateParquetColumnarStorage: &destinationAwsDatalakeUpdateParquetColumnarStorage,
		Type: typ,
	}
}

func (u *DestinationAwsDatalakeUpdateOutputFormatWildcard) UnmarshalJSON(data []byte) error {

	var destinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON = DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON{}
	if err := utils.UnmarshalJSON(data, &destinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON, "", true, true); err == nil {
		u.DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON = &destinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON
		u.Type = DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON
		return nil
	}

	var destinationAwsDatalakeUpdateParquetColumnarStorage DestinationAwsDatalakeUpdateParquetColumnarStorage = DestinationAwsDatalakeUpdateParquetColumnarStorage{}
	if err := utils.UnmarshalJSON(data, &destinationAwsDatalakeUpdateParquetColumnarStorage, "", true, true); err == nil {
		u.DestinationAwsDatalakeUpdateParquetColumnarStorage = &destinationAwsDatalakeUpdateParquetColumnarStorage
		u.Type = DestinationAwsDatalakeUpdateOutputFormatWildcardTypeDestinationAwsDatalakeUpdateParquetColumnarStorage
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationAwsDatalakeUpdateOutputFormatWildcard", string(data))
}

func (u DestinationAwsDatalakeUpdateOutputFormatWildcard) MarshalJSON() ([]byte, error) {
	if u.DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON != nil {
		return utils.MarshalJSON(u.DestinationAwsDatalakeUpdateJSONLinesNewlineDelimitedJSON, "", true)
	}

	if u.DestinationAwsDatalakeUpdateParquetColumnarStorage != nil {
		return utils.MarshalJSON(u.DestinationAwsDatalakeUpdateParquetColumnarStorage, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationAwsDatalakeUpdateOutputFormatWildcard: all fields are null")
}

// DestinationAwsDatalakeUpdateChooseHowToPartitionData - Partition data by cursor fields when a cursor field is a date
type DestinationAwsDatalakeUpdateChooseHowToPartitionData string

const (
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataNoPartitioning DestinationAwsDatalakeUpdateChooseHowToPartitionData = "NO PARTITIONING"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataDate           DestinationAwsDatalakeUpdateChooseHowToPartitionData = "DATE"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataYear           DestinationAwsDatalakeUpdateChooseHowToPartitionData = "YEAR"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataMonth          DestinationAwsDatalakeUpdateChooseHowToPartitionData = "MONTH"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataDay            DestinationAwsDatalakeUpdateChooseHowToPartitionData = "DAY"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataYearMonth      DestinationAwsDatalakeUpdateChooseHowToPartitionData = "YEAR/MONTH"
	DestinationAwsDatalakeUpdateChooseHowToPartitionDataYearMonthDay   DestinationAwsDatalakeUpdateChooseHowToPartitionData = "YEAR/MONTH/DAY"
)

func (e DestinationAwsDatalakeUpdateChooseHowToPartitionData) ToPointer() *DestinationAwsDatalakeUpdateChooseHowToPartitionData {
	return &e
}
func (e *DestinationAwsDatalakeUpdateChooseHowToPartitionData) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "NO PARTITIONING":
		fallthrough
	case "DATE":
		fallthrough
	case "YEAR":
		fallthrough
	case "MONTH":
		fallthrough
	case "DAY":
		fallthrough
	case "YEAR/MONTH":
		fallthrough
	case "YEAR/MONTH/DAY":
		*e = DestinationAwsDatalakeUpdateChooseHowToPartitionData(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateChooseHowToPartitionData: %v", v)
	}
}

// DestinationAwsDatalakeUpdateS3BucketRegion - The region of the S3 bucket. See <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions">here</a> for all region codes.
type DestinationAwsDatalakeUpdateS3BucketRegion string

const (
	DestinationAwsDatalakeUpdateS3BucketRegionUnknown      DestinationAwsDatalakeUpdateS3BucketRegion = ""
	DestinationAwsDatalakeUpdateS3BucketRegionAfSouth1     DestinationAwsDatalakeUpdateS3BucketRegion = "af-south-1"
	DestinationAwsDatalakeUpdateS3BucketRegionApEast1      DestinationAwsDatalakeUpdateS3BucketRegion = "ap-east-1"
	DestinationAwsDatalakeUpdateS3BucketRegionApNortheast1 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-northeast-1"
	DestinationAwsDatalakeUpdateS3BucketRegionApNortheast2 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-northeast-2"
	DestinationAwsDatalakeUpdateS3BucketRegionApNortheast3 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-northeast-3"
	DestinationAwsDatalakeUpdateS3BucketRegionApSouth1     DestinationAwsDatalakeUpdateS3BucketRegion = "ap-south-1"
	DestinationAwsDatalakeUpdateS3BucketRegionApSouth2     DestinationAwsDatalakeUpdateS3BucketRegion = "ap-south-2"
	DestinationAwsDatalakeUpdateS3BucketRegionApSoutheast1 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-southeast-1"
	DestinationAwsDatalakeUpdateS3BucketRegionApSoutheast2 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-southeast-2"
	DestinationAwsDatalakeUpdateS3BucketRegionApSoutheast3 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-southeast-3"
	DestinationAwsDatalakeUpdateS3BucketRegionApSoutheast4 DestinationAwsDatalakeUpdateS3BucketRegion = "ap-southeast-4"
	DestinationAwsDatalakeUpdateS3BucketRegionCaCentral1   DestinationAwsDatalakeUpdateS3BucketRegion = "ca-central-1"
	DestinationAwsDatalakeUpdateS3BucketRegionCaWest1      DestinationAwsDatalakeUpdateS3BucketRegion = "ca-west-1"
	DestinationAwsDatalakeUpdateS3BucketRegionCnNorth1     DestinationAwsDatalakeUpdateS3BucketRegion = "cn-north-1"
	DestinationAwsDatalakeUpdateS3BucketRegionCnNorthwest1 DestinationAwsDatalakeUpdateS3BucketRegion = "cn-northwest-1"
	DestinationAwsDatalakeUpdateS3BucketRegionEuCentral1   DestinationAwsDatalakeUpdateS3BucketRegion = "eu-central-1"
	DestinationAwsDatalakeUpdateS3BucketRegionEuCentral2   DestinationAwsDatalakeUpdateS3BucketRegion = "eu-central-2"
	DestinationAwsDatalakeUpdateS3BucketRegionEuNorth1     DestinationAwsDatalakeUpdateS3BucketRegion = "eu-north-1"
	DestinationAwsDatalakeUpdateS3BucketRegionEuSouth1     DestinationAwsDatalakeUpdateS3BucketRegion = "eu-south-1"
	DestinationAwsDatalakeUpdateS3BucketRegionEuSouth2     DestinationAwsDatalakeUpdateS3BucketRegion = "eu-south-2"
	DestinationAwsDatalakeUpdateS3BucketRegionEuWest1      DestinationAwsDatalakeUpdateS3BucketRegion = "eu-west-1"
	DestinationAwsDatalakeUpdateS3BucketRegionEuWest2      DestinationAwsDatalakeUpdateS3BucketRegion = "eu-west-2"
	DestinationAwsDatalakeUpdateS3BucketRegionEuWest3      DestinationAwsDatalakeUpdateS3BucketRegion = "eu-west-3"
	DestinationAwsDatalakeUpdateS3BucketRegionIlCentral1   DestinationAwsDatalakeUpdateS3BucketRegion = "il-central-1"
	DestinationAwsDatalakeUpdateS3BucketRegionMeCentral1   DestinationAwsDatalakeUpdateS3BucketRegion = "me-central-1"
	DestinationAwsDatalakeUpdateS3BucketRegionMeSouth1     DestinationAwsDatalakeUpdateS3BucketRegion = "me-south-1"
	DestinationAwsDatalakeUpdateS3BucketRegionSaEast1      DestinationAwsDatalakeUpdateS3BucketRegion = "sa-east-1"
	DestinationAwsDatalakeUpdateS3BucketRegionUsEast1      DestinationAwsDatalakeUpdateS3BucketRegion = "us-east-1"
	DestinationAwsDatalakeUpdateS3BucketRegionUsEast2      DestinationAwsDatalakeUpdateS3BucketRegion = "us-east-2"
	DestinationAwsDatalakeUpdateS3BucketRegionUsGovEast1   DestinationAwsDatalakeUpdateS3BucketRegion = "us-gov-east-1"
	DestinationAwsDatalakeUpdateS3BucketRegionUsGovWest1   DestinationAwsDatalakeUpdateS3BucketRegion = "us-gov-west-1"
	DestinationAwsDatalakeUpdateS3BucketRegionUsWest1      DestinationAwsDatalakeUpdateS3BucketRegion = "us-west-1"
	DestinationAwsDatalakeUpdateS3BucketRegionUsWest2      DestinationAwsDatalakeUpdateS3BucketRegion = "us-west-2"
)

func (e DestinationAwsDatalakeUpdateS3BucketRegion) ToPointer() *DestinationAwsDatalakeUpdateS3BucketRegion {
	return &e
}
func (e *DestinationAwsDatalakeUpdateS3BucketRegion) UnmarshalJSON(data []byte) error {
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
		*e = DestinationAwsDatalakeUpdateS3BucketRegion(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAwsDatalakeUpdateS3BucketRegion: %v", v)
	}
}

type DestinationAwsDatalakeUpdate struct {
	// target aws account id
	AwsAccountID *string `json:"aws_account_id,omitempty"`
	// The name of the S3 bucket. Read more <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html">here</a>.
	BucketName string `json:"bucket_name"`
	// S3 prefix
	BucketPrefix *string `json:"bucket_prefix,omitempty"`
	// Choose How to Authenticate to AWS.
	Credentials DestinationAwsDatalakeUpdateAuthenticationMode `json:"credentials"`
	// Format of the data output.
	Format *DestinationAwsDatalakeUpdateOutputFormatWildcard `json:"format,omitempty"`
	// Cast float/double as decimal(38,18). This can help achieve higher accuracy and represent numbers correctly as received from the source.
	GlueCatalogFloatAsDecimal *bool `default:"false" json:"glue_catalog_float_as_decimal"`
	// Add a default tag key to databases created by this destination
	LakeformationDatabaseDefaultTagKey *string `json:"lakeformation_database_default_tag_key,omitempty"`
	// Add default values for the `Tag Key` to databases created by this destination. Comma separate for multiple values.
	LakeformationDatabaseDefaultTagValues *string `json:"lakeformation_database_default_tag_values,omitempty"`
	// The default database this destination will use to create tables in per stream. Can be changed per connection by customizing the namespace.
	LakeformationDatabaseName string `json:"lakeformation_database_name"`
	// Whether to create tables as LF governed tables.
	LakeformationGovernedTables *bool `default:"false" json:"lakeformation_governed_tables"`
	// Partition data by cursor fields when a cursor field is a date
	Partitioning *DestinationAwsDatalakeUpdateChooseHowToPartitionData `default:"NO PARTITIONING" json:"partitioning"`
	// The region of the S3 bucket. See <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions">here</a> for all region codes.
	Region *DestinationAwsDatalakeUpdateS3BucketRegion `default:"" json:"region"`
}

func (d DestinationAwsDatalakeUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAwsDatalakeUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAwsDatalakeUpdate) GetAwsAccountID() *string {
	if o == nil {
		return nil
	}
	return o.AwsAccountID
}

func (o *DestinationAwsDatalakeUpdate) GetBucketName() string {
	if o == nil {
		return ""
	}
	return o.BucketName
}

func (o *DestinationAwsDatalakeUpdate) GetBucketPrefix() *string {
	if o == nil {
		return nil
	}
	return o.BucketPrefix
}

func (o *DestinationAwsDatalakeUpdate) GetCredentials() DestinationAwsDatalakeUpdateAuthenticationMode {
	if o == nil {
		return DestinationAwsDatalakeUpdateAuthenticationMode{}
	}
	return o.Credentials
}

func (o *DestinationAwsDatalakeUpdate) GetFormat() *DestinationAwsDatalakeUpdateOutputFormatWildcard {
	if o == nil {
		return nil
	}
	return o.Format
}

func (o *DestinationAwsDatalakeUpdate) GetGlueCatalogFloatAsDecimal() *bool {
	if o == nil {
		return nil
	}
	return o.GlueCatalogFloatAsDecimal
}

func (o *DestinationAwsDatalakeUpdate) GetLakeformationDatabaseDefaultTagKey() *string {
	if o == nil {
		return nil
	}
	return o.LakeformationDatabaseDefaultTagKey
}

func (o *DestinationAwsDatalakeUpdate) GetLakeformationDatabaseDefaultTagValues() *string {
	if o == nil {
		return nil
	}
	return o.LakeformationDatabaseDefaultTagValues
}

func (o *DestinationAwsDatalakeUpdate) GetLakeformationDatabaseName() string {
	if o == nil {
		return ""
	}
	return o.LakeformationDatabaseName
}

func (o *DestinationAwsDatalakeUpdate) GetLakeformationGovernedTables() *bool {
	if o == nil {
		return nil
	}
	return o.LakeformationGovernedTables
}

func (o *DestinationAwsDatalakeUpdate) GetPartitioning() *DestinationAwsDatalakeUpdateChooseHowToPartitionData {
	if o == nil {
		return nil
	}
	return o.Partitioning
}

func (o *DestinationAwsDatalakeUpdate) GetRegion() *DestinationAwsDatalakeUpdateS3BucketRegion {
	if o == nil {
		return nil
	}
	return o.Region
}
