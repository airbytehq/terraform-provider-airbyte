// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationMssqlV2SchemasLoadType string

const (
	DestinationMssqlV2SchemasLoadTypeBulk DestinationMssqlV2SchemasLoadType = "BULK"
)

func (e DestinationMssqlV2SchemasLoadType) ToPointer() *DestinationMssqlV2SchemasLoadType {
	return &e
}
func (e *DestinationMssqlV2SchemasLoadType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "BULK":
		*e = DestinationMssqlV2SchemasLoadType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationMssqlV2SchemasLoadType: %v", v)
	}
}

// DestinationMssqlV2BulkLoad - Configuration details for using the BULK loading mechanism.
type DestinationMssqlV2BulkLoad struct {
	// The name of the Azure Blob Storage account. See: https://learn.microsoft.com/azure/storage/blobs/storage-blobs-introduction#storage-accounts
	AzureBlobStorageAccountName string `json:"azure_blob_storage_account_name"`
	// The name of the Azure Blob Storage container. See: https://learn.microsoft.com/azure/storage/blobs/storage-blobs-introduction#containers
	AzureBlobStorageContainerName string `json:"azure_blob_storage_container_name"`
	// Specifies the external data source name configured in MSSQL, which references the Azure Blob container. See: https://learn.microsoft.com/sql/t-sql/statements/bulk-insert-transact-sql
	BulkLoadDataSource string `json:"bulk_load_data_source"`
	// When enabled, Airbyte will validate all values before loading them into the destination table. This provides stronger data integrity guarantees but may significantly impact performance.
	BulkLoadValidateValuesPreLoad *bool                              `default:"false" json:"bulk_load_validate_values_pre_load"`
	LoadType                      *DestinationMssqlV2SchemasLoadType `default:"BULK" json:"load_type"`
	// A shared access signature (SAS) provides secure delegated access to resources in your storage account. See: https://learn.microsoft.com/azure/storage/common/storage-sas-overview
	SharedAccessSignature string `json:"shared_access_signature"`
	AdditionalProperties  any    `additionalProperties:"true" json:"-"`
}

func (d DestinationMssqlV2BulkLoad) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2BulkLoad) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2BulkLoad) GetAzureBlobStorageAccountName() string {
	if o == nil {
		return ""
	}
	return o.AzureBlobStorageAccountName
}

func (o *DestinationMssqlV2BulkLoad) GetAzureBlobStorageContainerName() string {
	if o == nil {
		return ""
	}
	return o.AzureBlobStorageContainerName
}

func (o *DestinationMssqlV2BulkLoad) GetBulkLoadDataSource() string {
	if o == nil {
		return ""
	}
	return o.BulkLoadDataSource
}

func (o *DestinationMssqlV2BulkLoad) GetBulkLoadValidateValuesPreLoad() *bool {
	if o == nil {
		return nil
	}
	return o.BulkLoadValidateValuesPreLoad
}

func (o *DestinationMssqlV2BulkLoad) GetLoadType() *DestinationMssqlV2SchemasLoadType {
	if o == nil {
		return nil
	}
	return o.LoadType
}

func (o *DestinationMssqlV2BulkLoad) GetSharedAccessSignature() string {
	if o == nil {
		return ""
	}
	return o.SharedAccessSignature
}

func (o *DestinationMssqlV2BulkLoad) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type DestinationMssqlV2SchemasLoadTypeLoadType string

const (
	DestinationMssqlV2SchemasLoadTypeLoadTypeInsert DestinationMssqlV2SchemasLoadTypeLoadType = "INSERT"
)

func (e DestinationMssqlV2SchemasLoadTypeLoadType) ToPointer() *DestinationMssqlV2SchemasLoadTypeLoadType {
	return &e
}
func (e *DestinationMssqlV2SchemasLoadTypeLoadType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "INSERT":
		*e = DestinationMssqlV2SchemasLoadTypeLoadType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationMssqlV2SchemasLoadTypeLoadType: %v", v)
	}
}

// DestinationMssqlV2InsertLoad - Configuration details for using the INSERT loading mechanism.
type DestinationMssqlV2InsertLoad struct {
	LoadType             *DestinationMssqlV2SchemasLoadTypeLoadType `default:"INSERT" json:"load_type"`
	AdditionalProperties any                                        `additionalProperties:"true" json:"-"`
}

func (d DestinationMssqlV2InsertLoad) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2InsertLoad) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2InsertLoad) GetLoadType() *DestinationMssqlV2SchemasLoadTypeLoadType {
	if o == nil {
		return nil
	}
	return o.LoadType
}

func (o *DestinationMssqlV2InsertLoad) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type DestinationMssqlV2LoadTypeType string

const (
	DestinationMssqlV2LoadTypeTypeDestinationMssqlV2InsertLoad DestinationMssqlV2LoadTypeType = "destination-mssql-v2_Insert Load"
	DestinationMssqlV2LoadTypeTypeDestinationMssqlV2BulkLoad   DestinationMssqlV2LoadTypeType = "destination-mssql-v2_Bulk Load"
)

// DestinationMssqlV2LoadType - Specifies the type of load mechanism (e.g., BULK, INSERT) and its associated configuration.
type DestinationMssqlV2LoadType struct {
	DestinationMssqlV2InsertLoad *DestinationMssqlV2InsertLoad `queryParam:"inline"`
	DestinationMssqlV2BulkLoad   *DestinationMssqlV2BulkLoad   `queryParam:"inline"`

	Type DestinationMssqlV2LoadTypeType
}

func CreateDestinationMssqlV2LoadTypeDestinationMssqlV2InsertLoad(destinationMssqlV2InsertLoad DestinationMssqlV2InsertLoad) DestinationMssqlV2LoadType {
	typ := DestinationMssqlV2LoadTypeTypeDestinationMssqlV2InsertLoad

	return DestinationMssqlV2LoadType{
		DestinationMssqlV2InsertLoad: &destinationMssqlV2InsertLoad,
		Type:                         typ,
	}
}

func CreateDestinationMssqlV2LoadTypeDestinationMssqlV2BulkLoad(destinationMssqlV2BulkLoad DestinationMssqlV2BulkLoad) DestinationMssqlV2LoadType {
	typ := DestinationMssqlV2LoadTypeTypeDestinationMssqlV2BulkLoad

	return DestinationMssqlV2LoadType{
		DestinationMssqlV2BulkLoad: &destinationMssqlV2BulkLoad,
		Type:                       typ,
	}
}

func (u *DestinationMssqlV2LoadType) UnmarshalJSON(data []byte) error {

	var destinationMssqlV2InsertLoad DestinationMssqlV2InsertLoad = DestinationMssqlV2InsertLoad{}
	if err := utils.UnmarshalJSON(data, &destinationMssqlV2InsertLoad, "", true, true); err == nil {
		u.DestinationMssqlV2InsertLoad = &destinationMssqlV2InsertLoad
		u.Type = DestinationMssqlV2LoadTypeTypeDestinationMssqlV2InsertLoad
		return nil
	}

	var destinationMssqlV2BulkLoad DestinationMssqlV2BulkLoad = DestinationMssqlV2BulkLoad{}
	if err := utils.UnmarshalJSON(data, &destinationMssqlV2BulkLoad, "", true, true); err == nil {
		u.DestinationMssqlV2BulkLoad = &destinationMssqlV2BulkLoad
		u.Type = DestinationMssqlV2LoadTypeTypeDestinationMssqlV2BulkLoad
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationMssqlV2LoadType", string(data))
}

func (u DestinationMssqlV2LoadType) MarshalJSON() ([]byte, error) {
	if u.DestinationMssqlV2InsertLoad != nil {
		return utils.MarshalJSON(u.DestinationMssqlV2InsertLoad, "", true)
	}

	if u.DestinationMssqlV2BulkLoad != nil {
		return utils.MarshalJSON(u.DestinationMssqlV2BulkLoad, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationMssqlV2LoadType: all fields are null")
}

type DestinationMssqlV2SchemasSslMethodName string

const (
	DestinationMssqlV2SchemasSslMethodNameEncryptedVerifyCertificate DestinationMssqlV2SchemasSslMethodName = "encrypted_verify_certificate"
)

func (e DestinationMssqlV2SchemasSslMethodName) ToPointer() *DestinationMssqlV2SchemasSslMethodName {
	return &e
}
func (e *DestinationMssqlV2SchemasSslMethodName) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "encrypted_verify_certificate":
		*e = DestinationMssqlV2SchemasSslMethodName(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationMssqlV2SchemasSslMethodName: %v", v)
	}
}

// DestinationMssqlV2EncryptedVerifyCertificate - Verify and use the certificate provided by the server.
type DestinationMssqlV2EncryptedVerifyCertificate struct {
	// Specifies the host name of the server. The value of this property must match the subject property of the certificate.
	HostNameInCertificate *string                                 `json:"hostNameInCertificate,omitempty"`
	Name                  *DestinationMssqlV2SchemasSslMethodName `default:"encrypted_verify_certificate" json:"name"`
	// Specifies the name of the trust store.
	TrustStoreName *string `json:"trustStoreName,omitempty"`
	// Specifies the password of the trust store.
	TrustStorePassword   *string `json:"trustStorePassword,omitempty"`
	AdditionalProperties any     `additionalProperties:"true" json:"-"`
}

func (d DestinationMssqlV2EncryptedVerifyCertificate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2EncryptedVerifyCertificate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2EncryptedVerifyCertificate) GetHostNameInCertificate() *string {
	if o == nil {
		return nil
	}
	return o.HostNameInCertificate
}

func (o *DestinationMssqlV2EncryptedVerifyCertificate) GetName() *DestinationMssqlV2SchemasSslMethodName {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *DestinationMssqlV2EncryptedVerifyCertificate) GetTrustStoreName() *string {
	if o == nil {
		return nil
	}
	return o.TrustStoreName
}

func (o *DestinationMssqlV2EncryptedVerifyCertificate) GetTrustStorePassword() *string {
	if o == nil {
		return nil
	}
	return o.TrustStorePassword
}

func (o *DestinationMssqlV2EncryptedVerifyCertificate) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type DestinationMssqlV2SchemasName string

const (
	DestinationMssqlV2SchemasNameEncryptedTrustServerCertificate DestinationMssqlV2SchemasName = "encrypted_trust_server_certificate"
)

func (e DestinationMssqlV2SchemasName) ToPointer() *DestinationMssqlV2SchemasName {
	return &e
}
func (e *DestinationMssqlV2SchemasName) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "encrypted_trust_server_certificate":
		*e = DestinationMssqlV2SchemasName(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationMssqlV2SchemasName: %v", v)
	}
}

// DestinationMssqlV2EncryptedTrustServerCertificate - Use the certificate provided by the server without verification. (For testing purposes only!)
type DestinationMssqlV2EncryptedTrustServerCertificate struct {
	Name                 *DestinationMssqlV2SchemasName `default:"encrypted_trust_server_certificate" json:"name"`
	AdditionalProperties any                            `additionalProperties:"true" json:"-"`
}

func (d DestinationMssqlV2EncryptedTrustServerCertificate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2EncryptedTrustServerCertificate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2EncryptedTrustServerCertificate) GetName() *DestinationMssqlV2SchemasName {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *DestinationMssqlV2EncryptedTrustServerCertificate) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type DestinationMssqlV2Name string

const (
	DestinationMssqlV2NameUnencrypted DestinationMssqlV2Name = "unencrypted"
)

func (e DestinationMssqlV2Name) ToPointer() *DestinationMssqlV2Name {
	return &e
}
func (e *DestinationMssqlV2Name) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "unencrypted":
		*e = DestinationMssqlV2Name(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationMssqlV2Name: %v", v)
	}
}

// DestinationMssqlV2Unencrypted - The data transfer will not be encrypted.
type DestinationMssqlV2Unencrypted struct {
	Name                 *DestinationMssqlV2Name `default:"unencrypted" json:"name"`
	AdditionalProperties any                     `additionalProperties:"true" json:"-"`
}

func (d DestinationMssqlV2Unencrypted) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2Unencrypted) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2Unencrypted) GetName() *DestinationMssqlV2Name {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *DestinationMssqlV2Unencrypted) GetAdditionalProperties() any {
	if o == nil {
		return nil
	}
	return o.AdditionalProperties
}

type DestinationMssqlV2SSLMethodType string

const (
	DestinationMssqlV2SSLMethodTypeDestinationMssqlV2Unencrypted                     DestinationMssqlV2SSLMethodType = "destination-mssql-v2_Unencrypted"
	DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedTrustServerCertificate DestinationMssqlV2SSLMethodType = "destination-mssql-v2_Encrypted (trust server certificate)"
	DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedVerifyCertificate      DestinationMssqlV2SSLMethodType = "destination-mssql-v2_Encrypted (verify certificate)"
)

// DestinationMssqlV2SSLMethod - The encryption method which is used to communicate with the database.
type DestinationMssqlV2SSLMethod struct {
	DestinationMssqlV2Unencrypted                     *DestinationMssqlV2Unencrypted                     `queryParam:"inline"`
	DestinationMssqlV2EncryptedTrustServerCertificate *DestinationMssqlV2EncryptedTrustServerCertificate `queryParam:"inline"`
	DestinationMssqlV2EncryptedVerifyCertificate      *DestinationMssqlV2EncryptedVerifyCertificate      `queryParam:"inline"`

	Type DestinationMssqlV2SSLMethodType
}

func CreateDestinationMssqlV2SSLMethodDestinationMssqlV2Unencrypted(destinationMssqlV2Unencrypted DestinationMssqlV2Unencrypted) DestinationMssqlV2SSLMethod {
	typ := DestinationMssqlV2SSLMethodTypeDestinationMssqlV2Unencrypted

	return DestinationMssqlV2SSLMethod{
		DestinationMssqlV2Unencrypted: &destinationMssqlV2Unencrypted,
		Type:                          typ,
	}
}

func CreateDestinationMssqlV2SSLMethodDestinationMssqlV2EncryptedTrustServerCertificate(destinationMssqlV2EncryptedTrustServerCertificate DestinationMssqlV2EncryptedTrustServerCertificate) DestinationMssqlV2SSLMethod {
	typ := DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedTrustServerCertificate

	return DestinationMssqlV2SSLMethod{
		DestinationMssqlV2EncryptedTrustServerCertificate: &destinationMssqlV2EncryptedTrustServerCertificate,
		Type: typ,
	}
}

func CreateDestinationMssqlV2SSLMethodDestinationMssqlV2EncryptedVerifyCertificate(destinationMssqlV2EncryptedVerifyCertificate DestinationMssqlV2EncryptedVerifyCertificate) DestinationMssqlV2SSLMethod {
	typ := DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedVerifyCertificate

	return DestinationMssqlV2SSLMethod{
		DestinationMssqlV2EncryptedVerifyCertificate: &destinationMssqlV2EncryptedVerifyCertificate,
		Type: typ,
	}
}

func (u *DestinationMssqlV2SSLMethod) UnmarshalJSON(data []byte) error {

	var destinationMssqlV2Unencrypted DestinationMssqlV2Unencrypted = DestinationMssqlV2Unencrypted{}
	if err := utils.UnmarshalJSON(data, &destinationMssqlV2Unencrypted, "", true, true); err == nil {
		u.DestinationMssqlV2Unencrypted = &destinationMssqlV2Unencrypted
		u.Type = DestinationMssqlV2SSLMethodTypeDestinationMssqlV2Unencrypted
		return nil
	}

	var destinationMssqlV2EncryptedTrustServerCertificate DestinationMssqlV2EncryptedTrustServerCertificate = DestinationMssqlV2EncryptedTrustServerCertificate{}
	if err := utils.UnmarshalJSON(data, &destinationMssqlV2EncryptedTrustServerCertificate, "", true, true); err == nil {
		u.DestinationMssqlV2EncryptedTrustServerCertificate = &destinationMssqlV2EncryptedTrustServerCertificate
		u.Type = DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedTrustServerCertificate
		return nil
	}

	var destinationMssqlV2EncryptedVerifyCertificate DestinationMssqlV2EncryptedVerifyCertificate = DestinationMssqlV2EncryptedVerifyCertificate{}
	if err := utils.UnmarshalJSON(data, &destinationMssqlV2EncryptedVerifyCertificate, "", true, true); err == nil {
		u.DestinationMssqlV2EncryptedVerifyCertificate = &destinationMssqlV2EncryptedVerifyCertificate
		u.Type = DestinationMssqlV2SSLMethodTypeDestinationMssqlV2EncryptedVerifyCertificate
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationMssqlV2SSLMethod", string(data))
}

func (u DestinationMssqlV2SSLMethod) MarshalJSON() ([]byte, error) {
	if u.DestinationMssqlV2Unencrypted != nil {
		return utils.MarshalJSON(u.DestinationMssqlV2Unencrypted, "", true)
	}

	if u.DestinationMssqlV2EncryptedTrustServerCertificate != nil {
		return utils.MarshalJSON(u.DestinationMssqlV2EncryptedTrustServerCertificate, "", true)
	}

	if u.DestinationMssqlV2EncryptedVerifyCertificate != nil {
		return utils.MarshalJSON(u.DestinationMssqlV2EncryptedVerifyCertificate, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationMssqlV2SSLMethod: all fields are null")
}

type MssqlV2 string

const (
	MssqlV2MssqlV2 MssqlV2 = "mssql-v2"
)

func (e MssqlV2) ToPointer() *MssqlV2 {
	return &e
}
func (e *MssqlV2) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "mssql-v2":
		*e = MssqlV2(v)
		return nil
	default:
		return fmt.Errorf("invalid value for MssqlV2: %v", v)
	}
}

type DestinationMssqlV2 struct {
	// The name of the MSSQL database.
	Database string `json:"database"`
	// The host name of the MSSQL database.
	Host string `json:"host"`
	// Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
	JdbcURLParams *string `json:"jdbc_url_params,omitempty"`
	// Specifies the type of load mechanism (e.g., BULK, INSERT) and its associated configuration.
	LoadType DestinationMssqlV2LoadType `json:"load_type"`
	// The password associated with this username.
	Password *string `json:"password,omitempty"`
	// The port of the MSSQL database.
	Port int64 `json:"port"`
	// The default schema tables are written to if the source does not specify a namespace. The usual value for this field is "public".
	Schema *string `default:"public" json:"schema"`
	// The encryption method which is used to communicate with the database.
	SslMethod DestinationMssqlV2SSLMethod `json:"ssl_method"`
	// The username which is used to access the database.
	User            string  `json:"user"`
	destinationType MssqlV2 `const:"mssql-v2" json:"destinationType"`
}

func (d DestinationMssqlV2) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationMssqlV2) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationMssqlV2) GetDatabase() string {
	if o == nil {
		return ""
	}
	return o.Database
}

func (o *DestinationMssqlV2) GetHost() string {
	if o == nil {
		return ""
	}
	return o.Host
}

func (o *DestinationMssqlV2) GetJdbcURLParams() *string {
	if o == nil {
		return nil
	}
	return o.JdbcURLParams
}

func (o *DestinationMssqlV2) GetLoadType() DestinationMssqlV2LoadType {
	if o == nil {
		return DestinationMssqlV2LoadType{}
	}
	return o.LoadType
}

func (o *DestinationMssqlV2) GetPassword() *string {
	if o == nil {
		return nil
	}
	return o.Password
}

func (o *DestinationMssqlV2) GetPort() int64 {
	if o == nil {
		return 0
	}
	return o.Port
}

func (o *DestinationMssqlV2) GetSchema() *string {
	if o == nil {
		return nil
	}
	return o.Schema
}

func (o *DestinationMssqlV2) GetSslMethod() DestinationMssqlV2SSLMethod {
	if o == nil {
		return DestinationMssqlV2SSLMethod{}
	}
	return o.SslMethod
}

func (o *DestinationMssqlV2) GetUser() string {
	if o == nil {
		return ""
	}
	return o.User
}

func (o *DestinationMssqlV2) GetDestinationType() MssqlV2 {
	return MssqlV2MssqlV2
}
