// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type SourceMssqlUpdateSchemasMethod string

const (
	SourceMssqlUpdateSchemasMethodStandard SourceMssqlUpdateSchemasMethod = "STANDARD"
)

func (e SourceMssqlUpdateSchemasMethod) ToPointer() *SourceMssqlUpdateSchemasMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "STANDARD":
		*e = SourceMssqlUpdateSchemasMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasMethod: %v", v)
	}
}

// ScanChangesWithUserDefinedCursor - Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at).
type ScanChangesWithUserDefinedCursor struct {
	method SourceMssqlUpdateSchemasMethod `const:"STANDARD" json:"method"`
}

func (s ScanChangesWithUserDefinedCursor) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *ScanChangesWithUserDefinedCursor) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *ScanChangesWithUserDefinedCursor) GetMethod() SourceMssqlUpdateSchemasMethod {
	return SourceMssqlUpdateSchemasMethodStandard
}

// SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced - Determines whether Airbyte should fail or re-sync data in case of an stale/invalid cursor value into the WAL. If 'Fail sync' is chosen, a user will have to manually reset the connection before being able to continue syncing data. If 'Re-sync data' is chosen, Airbyte will automatically trigger a refresh but could lead to higher cloud costs and data loss.
type SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced string

const (
	SourceMssqlUpdateInvalidCDCPositionBehaviorAdvancedFailSync   SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced = "Fail sync"
	SourceMssqlUpdateInvalidCDCPositionBehaviorAdvancedReSyncData SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced = "Re-sync data"
)

func (e SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced) ToPointer() *SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced {
	return &e
}
func (e *SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "Fail sync":
		fallthrough
	case "Re-sync data":
		*e = SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced: %v", v)
	}
}

type SourceMssqlUpdateSchemasReplicationMethodMethod string

const (
	SourceMssqlUpdateSchemasReplicationMethodMethodCdc SourceMssqlUpdateSchemasReplicationMethodMethod = "CDC"
)

func (e SourceMssqlUpdateSchemasReplicationMethodMethod) ToPointer() *SourceMssqlUpdateSchemasReplicationMethodMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasReplicationMethodMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "CDC":
		*e = SourceMssqlUpdateSchemasReplicationMethodMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasReplicationMethodMethod: %v", v)
	}
}

// ReadChangesUsingChangeDataCaptureCDC - <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the SQL Server's <a href="https://docs.airbyte.com/integrations/sources/mssql/#change-data-capture-cdc">change data capture feature</a>. This must be enabled on your database.
type ReadChangesUsingChangeDataCaptureCDC struct {
	// The amount of time an initial load is allowed to continue for before catching up on CDC logs.
	InitialLoadTimeoutHours *int64 `default:"8" json:"initial_load_timeout_hours"`
	// The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 300 seconds. Valid range: 120 seconds to 3600 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">initial waiting time</a>.
	InitialWaitingSeconds *int64 `default:"300" json:"initial_waiting_seconds"`
	// Determines whether Airbyte should fail or re-sync data in case of an stale/invalid cursor value into the WAL. If 'Fail sync' is chosen, a user will have to manually reset the connection before being able to continue syncing data. If 'Re-sync data' is chosen, Airbyte will automatically trigger a refresh but could lead to higher cloud costs and data loss.
	InvalidCdcCursorPositionBehavior *SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced `default:"Fail sync" json:"invalid_cdc_cursor_position_behavior"`
	method                           SourceMssqlUpdateSchemasReplicationMethodMethod      `const:"CDC" json:"method"`
	// The size of the internal queue. This may interfere with memory consumption and efficiency of the connector, please be careful.
	QueueSize *int64 `default:"10000" json:"queue_size"`
}

func (r ReadChangesUsingChangeDataCaptureCDC) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(r, "", false)
}

func (r *ReadChangesUsingChangeDataCaptureCDC) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &r, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *ReadChangesUsingChangeDataCaptureCDC) GetInitialLoadTimeoutHours() *int64 {
	if o == nil {
		return nil
	}
	return o.InitialLoadTimeoutHours
}

func (o *ReadChangesUsingChangeDataCaptureCDC) GetInitialWaitingSeconds() *int64 {
	if o == nil {
		return nil
	}
	return o.InitialWaitingSeconds
}

func (o *ReadChangesUsingChangeDataCaptureCDC) GetInvalidCdcCursorPositionBehavior() *SourceMssqlUpdateInvalidCDCPositionBehaviorAdvanced {
	if o == nil {
		return nil
	}
	return o.InvalidCdcCursorPositionBehavior
}

func (o *ReadChangesUsingChangeDataCaptureCDC) GetMethod() SourceMssqlUpdateSchemasReplicationMethodMethod {
	return SourceMssqlUpdateSchemasReplicationMethodMethodCdc
}

func (o *ReadChangesUsingChangeDataCaptureCDC) GetQueueSize() *int64 {
	if o == nil {
		return nil
	}
	return o.QueueSize
}

type UpdateMethodType string

const (
	UpdateMethodTypeReadChangesUsingChangeDataCaptureCDC UpdateMethodType = "Read Changes using Change Data Capture (CDC)"
	UpdateMethodTypeScanChangesWithUserDefinedCursor     UpdateMethodType = "Scan Changes with User Defined Cursor"
)

// UpdateMethod - Configures how data is extracted from the database.
type UpdateMethod struct {
	ReadChangesUsingChangeDataCaptureCDC *ReadChangesUsingChangeDataCaptureCDC
	ScanChangesWithUserDefinedCursor     *ScanChangesWithUserDefinedCursor

	Type UpdateMethodType
}

func CreateUpdateMethodReadChangesUsingChangeDataCaptureCDC(readChangesUsingChangeDataCaptureCDC ReadChangesUsingChangeDataCaptureCDC) UpdateMethod {
	typ := UpdateMethodTypeReadChangesUsingChangeDataCaptureCDC

	return UpdateMethod{
		ReadChangesUsingChangeDataCaptureCDC: &readChangesUsingChangeDataCaptureCDC,
		Type:                                 typ,
	}
}

func CreateUpdateMethodScanChangesWithUserDefinedCursor(scanChangesWithUserDefinedCursor ScanChangesWithUserDefinedCursor) UpdateMethod {
	typ := UpdateMethodTypeScanChangesWithUserDefinedCursor

	return UpdateMethod{
		ScanChangesWithUserDefinedCursor: &scanChangesWithUserDefinedCursor,
		Type:                             typ,
	}
}

func (u *UpdateMethod) UnmarshalJSON(data []byte) error {

	var scanChangesWithUserDefinedCursor ScanChangesWithUserDefinedCursor = ScanChangesWithUserDefinedCursor{}
	if err := utils.UnmarshalJSON(data, &scanChangesWithUserDefinedCursor, "", true, true); err == nil {
		u.ScanChangesWithUserDefinedCursor = &scanChangesWithUserDefinedCursor
		u.Type = UpdateMethodTypeScanChangesWithUserDefinedCursor
		return nil
	}

	var readChangesUsingChangeDataCaptureCDC ReadChangesUsingChangeDataCaptureCDC = ReadChangesUsingChangeDataCaptureCDC{}
	if err := utils.UnmarshalJSON(data, &readChangesUsingChangeDataCaptureCDC, "", true, true); err == nil {
		u.ReadChangesUsingChangeDataCaptureCDC = &readChangesUsingChangeDataCaptureCDC
		u.Type = UpdateMethodTypeReadChangesUsingChangeDataCaptureCDC
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for UpdateMethod", string(data))
}

func (u UpdateMethod) MarshalJSON() ([]byte, error) {
	if u.ReadChangesUsingChangeDataCaptureCDC != nil {
		return utils.MarshalJSON(u.ReadChangesUsingChangeDataCaptureCDC, "", true)
	}

	if u.ScanChangesWithUserDefinedCursor != nil {
		return utils.MarshalJSON(u.ScanChangesWithUserDefinedCursor, "", true)
	}

	return nil, errors.New("could not marshal union type UpdateMethod: all fields are null")
}

type SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod string

const (
	SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethodEncryptedVerifyCertificate SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod = "encrypted_verify_certificate"
)

func (e SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod) ToPointer() *SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "encrypted_verify_certificate":
		*e = SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod: %v", v)
	}
}

// SourceMssqlUpdateEncryptedVerifyCertificate - Verify and use the certificate provided by the server.
type SourceMssqlUpdateEncryptedVerifyCertificate struct {
	// certificate of the server, or of the CA that signed the server certificate
	Certificate *string `json:"certificate,omitempty"`
	// Specifies the host name of the server. The value of this property must match the subject property of the certificate.
	HostNameInCertificate *string                                             `json:"hostNameInCertificate,omitempty"`
	sslMethod             SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod `const:"encrypted_verify_certificate" json:"ssl_method"`
}

func (s SourceMssqlUpdateEncryptedVerifyCertificate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdateEncryptedVerifyCertificate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdateEncryptedVerifyCertificate) GetCertificate() *string {
	if o == nil {
		return nil
	}
	return o.Certificate
}

func (o *SourceMssqlUpdateEncryptedVerifyCertificate) GetHostNameInCertificate() *string {
	if o == nil {
		return nil
	}
	return o.HostNameInCertificate
}

func (o *SourceMssqlUpdateEncryptedVerifyCertificate) GetSslMethod() SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethod {
	return SourceMssqlUpdateSchemasSSLMethodSSLMethodSSLMethodEncryptedVerifyCertificate
}

type SourceMssqlUpdateSchemasSslMethodSslMethod string

const (
	SourceMssqlUpdateSchemasSslMethodSslMethodEncryptedTrustServerCertificate SourceMssqlUpdateSchemasSslMethodSslMethod = "encrypted_trust_server_certificate"
)

func (e SourceMssqlUpdateSchemasSslMethodSslMethod) ToPointer() *SourceMssqlUpdateSchemasSslMethodSslMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasSslMethodSslMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "encrypted_trust_server_certificate":
		*e = SourceMssqlUpdateSchemasSslMethodSslMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasSslMethodSslMethod: %v", v)
	}
}

// SourceMssqlUpdateEncryptedTrustServerCertificate - Use the certificate provided by the server without verification. (For testing purposes only!)
type SourceMssqlUpdateEncryptedTrustServerCertificate struct {
	sslMethod SourceMssqlUpdateSchemasSslMethodSslMethod `const:"encrypted_trust_server_certificate" json:"ssl_method"`
}

func (s SourceMssqlUpdateEncryptedTrustServerCertificate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdateEncryptedTrustServerCertificate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdateEncryptedTrustServerCertificate) GetSslMethod() SourceMssqlUpdateSchemasSslMethodSslMethod {
	return SourceMssqlUpdateSchemasSslMethodSslMethodEncryptedTrustServerCertificate
}

type SourceMssqlUpdateSchemasSslMethod string

const (
	SourceMssqlUpdateSchemasSslMethodUnencrypted SourceMssqlUpdateSchemasSslMethod = "unencrypted"
)

func (e SourceMssqlUpdateSchemasSslMethod) ToPointer() *SourceMssqlUpdateSchemasSslMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasSslMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "unencrypted":
		*e = SourceMssqlUpdateSchemasSslMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasSslMethod: %v", v)
	}
}

// SourceMssqlUpdateUnencrypted - Data transfer will not be encrypted.
type SourceMssqlUpdateUnencrypted struct {
	sslMethod SourceMssqlUpdateSchemasSslMethod `const:"unencrypted" json:"ssl_method"`
}

func (s SourceMssqlUpdateUnencrypted) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdateUnencrypted) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdateUnencrypted) GetSslMethod() SourceMssqlUpdateSchemasSslMethod {
	return SourceMssqlUpdateSchemasSslMethodUnencrypted
}

type SourceMssqlUpdateSSLMethodType string

const (
	SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateUnencrypted                     SourceMssqlUpdateSSLMethodType = "source-mssql-update_Unencrypted"
	SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedTrustServerCertificate SourceMssqlUpdateSSLMethodType = "source-mssql-update_Encrypted (trust server certificate)"
	SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedVerifyCertificate      SourceMssqlUpdateSSLMethodType = "source-mssql-update_Encrypted (verify certificate)"
)

// SourceMssqlUpdateSSLMethod - The encryption method which is used when communicating with the database.
type SourceMssqlUpdateSSLMethod struct {
	SourceMssqlUpdateUnencrypted                     *SourceMssqlUpdateUnencrypted
	SourceMssqlUpdateEncryptedTrustServerCertificate *SourceMssqlUpdateEncryptedTrustServerCertificate
	SourceMssqlUpdateEncryptedVerifyCertificate      *SourceMssqlUpdateEncryptedVerifyCertificate

	Type SourceMssqlUpdateSSLMethodType
}

func CreateSourceMssqlUpdateSSLMethodSourceMssqlUpdateUnencrypted(sourceMssqlUpdateUnencrypted SourceMssqlUpdateUnencrypted) SourceMssqlUpdateSSLMethod {
	typ := SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateUnencrypted

	return SourceMssqlUpdateSSLMethod{
		SourceMssqlUpdateUnencrypted: &sourceMssqlUpdateUnencrypted,
		Type:                         typ,
	}
}

func CreateSourceMssqlUpdateSSLMethodSourceMssqlUpdateEncryptedTrustServerCertificate(sourceMssqlUpdateEncryptedTrustServerCertificate SourceMssqlUpdateEncryptedTrustServerCertificate) SourceMssqlUpdateSSLMethod {
	typ := SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedTrustServerCertificate

	return SourceMssqlUpdateSSLMethod{
		SourceMssqlUpdateEncryptedTrustServerCertificate: &sourceMssqlUpdateEncryptedTrustServerCertificate,
		Type: typ,
	}
}

func CreateSourceMssqlUpdateSSLMethodSourceMssqlUpdateEncryptedVerifyCertificate(sourceMssqlUpdateEncryptedVerifyCertificate SourceMssqlUpdateEncryptedVerifyCertificate) SourceMssqlUpdateSSLMethod {
	typ := SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedVerifyCertificate

	return SourceMssqlUpdateSSLMethod{
		SourceMssqlUpdateEncryptedVerifyCertificate: &sourceMssqlUpdateEncryptedVerifyCertificate,
		Type: typ,
	}
}

func (u *SourceMssqlUpdateSSLMethod) UnmarshalJSON(data []byte) error {

	var sourceMssqlUpdateUnencrypted SourceMssqlUpdateUnencrypted = SourceMssqlUpdateUnencrypted{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdateUnencrypted, "", true, true); err == nil {
		u.SourceMssqlUpdateUnencrypted = &sourceMssqlUpdateUnencrypted
		u.Type = SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateUnencrypted
		return nil
	}

	var sourceMssqlUpdateEncryptedTrustServerCertificate SourceMssqlUpdateEncryptedTrustServerCertificate = SourceMssqlUpdateEncryptedTrustServerCertificate{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdateEncryptedTrustServerCertificate, "", true, true); err == nil {
		u.SourceMssqlUpdateEncryptedTrustServerCertificate = &sourceMssqlUpdateEncryptedTrustServerCertificate
		u.Type = SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedTrustServerCertificate
		return nil
	}

	var sourceMssqlUpdateEncryptedVerifyCertificate SourceMssqlUpdateEncryptedVerifyCertificate = SourceMssqlUpdateEncryptedVerifyCertificate{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdateEncryptedVerifyCertificate, "", true, true); err == nil {
		u.SourceMssqlUpdateEncryptedVerifyCertificate = &sourceMssqlUpdateEncryptedVerifyCertificate
		u.Type = SourceMssqlUpdateSSLMethodTypeSourceMssqlUpdateEncryptedVerifyCertificate
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceMssqlUpdateSSLMethod", string(data))
}

func (u SourceMssqlUpdateSSLMethod) MarshalJSON() ([]byte, error) {
	if u.SourceMssqlUpdateUnencrypted != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdateUnencrypted, "", true)
	}

	if u.SourceMssqlUpdateEncryptedTrustServerCertificate != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdateEncryptedTrustServerCertificate, "", true)
	}

	if u.SourceMssqlUpdateEncryptedVerifyCertificate != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdateEncryptedVerifyCertificate, "", true)
	}

	return nil, errors.New("could not marshal union type SourceMssqlUpdateSSLMethod: all fields are null")
}

// SourceMssqlUpdateSchemasTunnelMethodTunnelMethod - Connect through a jump server tunnel host using username and password authentication
type SourceMssqlUpdateSchemasTunnelMethodTunnelMethod string

const (
	SourceMssqlUpdateSchemasTunnelMethodTunnelMethodSSHPasswordAuth SourceMssqlUpdateSchemasTunnelMethodTunnelMethod = "SSH_PASSWORD_AUTH"
)

func (e SourceMssqlUpdateSchemasTunnelMethodTunnelMethod) ToPointer() *SourceMssqlUpdateSchemasTunnelMethodTunnelMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasTunnelMethodTunnelMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "SSH_PASSWORD_AUTH":
		*e = SourceMssqlUpdateSchemasTunnelMethodTunnelMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasTunnelMethodTunnelMethod: %v", v)
	}
}

type SourceMssqlUpdatePasswordAuthentication struct {
	// Hostname of the jump server host that allows inbound ssh tunnel.
	TunnelHost string `json:"tunnel_host"`
	// Connect through a jump server tunnel host using username and password authentication
	tunnelMethod SourceMssqlUpdateSchemasTunnelMethodTunnelMethod `const:"SSH_PASSWORD_AUTH" json:"tunnel_method"`
	// Port on the proxy/jump server that accepts inbound ssh connections.
	TunnelPort *int64 `default:"22" json:"tunnel_port"`
	// OS-level username for logging into the jump server host
	TunnelUser string `json:"tunnel_user"`
	// OS-level password for logging into the jump server host
	TunnelUserPassword string `json:"tunnel_user_password"`
}

func (s SourceMssqlUpdatePasswordAuthentication) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdatePasswordAuthentication) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdatePasswordAuthentication) GetTunnelHost() string {
	if o == nil {
		return ""
	}
	return o.TunnelHost
}

func (o *SourceMssqlUpdatePasswordAuthentication) GetTunnelMethod() SourceMssqlUpdateSchemasTunnelMethodTunnelMethod {
	return SourceMssqlUpdateSchemasTunnelMethodTunnelMethodSSHPasswordAuth
}

func (o *SourceMssqlUpdatePasswordAuthentication) GetTunnelPort() *int64 {
	if o == nil {
		return nil
	}
	return o.TunnelPort
}

func (o *SourceMssqlUpdatePasswordAuthentication) GetTunnelUser() string {
	if o == nil {
		return ""
	}
	return o.TunnelUser
}

func (o *SourceMssqlUpdatePasswordAuthentication) GetTunnelUserPassword() string {
	if o == nil {
		return ""
	}
	return o.TunnelUserPassword
}

// SourceMssqlUpdateSchemasTunnelMethod - Connect through a jump server tunnel host using username and ssh key
type SourceMssqlUpdateSchemasTunnelMethod string

const (
	SourceMssqlUpdateSchemasTunnelMethodSSHKeyAuth SourceMssqlUpdateSchemasTunnelMethod = "SSH_KEY_AUTH"
)

func (e SourceMssqlUpdateSchemasTunnelMethod) ToPointer() *SourceMssqlUpdateSchemasTunnelMethod {
	return &e
}
func (e *SourceMssqlUpdateSchemasTunnelMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "SSH_KEY_AUTH":
		*e = SourceMssqlUpdateSchemasTunnelMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateSchemasTunnelMethod: %v", v)
	}
}

type SourceMssqlUpdateSSHKeyAuthentication struct {
	// OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
	SSHKey string `json:"ssh_key"`
	// Hostname of the jump server host that allows inbound ssh tunnel.
	TunnelHost string `json:"tunnel_host"`
	// Connect through a jump server tunnel host using username and ssh key
	tunnelMethod SourceMssqlUpdateSchemasTunnelMethod `const:"SSH_KEY_AUTH" json:"tunnel_method"`
	// Port on the proxy/jump server that accepts inbound ssh connections.
	TunnelPort *int64 `default:"22" json:"tunnel_port"`
	// OS-level username for logging into the jump server host.
	TunnelUser string `json:"tunnel_user"`
}

func (s SourceMssqlUpdateSSHKeyAuthentication) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdateSSHKeyAuthentication) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdateSSHKeyAuthentication) GetSSHKey() string {
	if o == nil {
		return ""
	}
	return o.SSHKey
}

func (o *SourceMssqlUpdateSSHKeyAuthentication) GetTunnelHost() string {
	if o == nil {
		return ""
	}
	return o.TunnelHost
}

func (o *SourceMssqlUpdateSSHKeyAuthentication) GetTunnelMethod() SourceMssqlUpdateSchemasTunnelMethod {
	return SourceMssqlUpdateSchemasTunnelMethodSSHKeyAuth
}

func (o *SourceMssqlUpdateSSHKeyAuthentication) GetTunnelPort() *int64 {
	if o == nil {
		return nil
	}
	return o.TunnelPort
}

func (o *SourceMssqlUpdateSSHKeyAuthentication) GetTunnelUser() string {
	if o == nil {
		return ""
	}
	return o.TunnelUser
}

// SourceMssqlUpdateTunnelMethod - No ssh tunnel needed to connect to database
type SourceMssqlUpdateTunnelMethod string

const (
	SourceMssqlUpdateTunnelMethodNoTunnel SourceMssqlUpdateTunnelMethod = "NO_TUNNEL"
)

func (e SourceMssqlUpdateTunnelMethod) ToPointer() *SourceMssqlUpdateTunnelMethod {
	return &e
}
func (e *SourceMssqlUpdateTunnelMethod) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "NO_TUNNEL":
		*e = SourceMssqlUpdateTunnelMethod(v)
		return nil
	default:
		return fmt.Errorf("invalid value for SourceMssqlUpdateTunnelMethod: %v", v)
	}
}

type SourceMssqlUpdateNoTunnel struct {
	// No ssh tunnel needed to connect to database
	tunnelMethod SourceMssqlUpdateTunnelMethod `const:"NO_TUNNEL" json:"tunnel_method"`
}

func (s SourceMssqlUpdateNoTunnel) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(s, "", false)
}

func (s *SourceMssqlUpdateNoTunnel) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &s, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *SourceMssqlUpdateNoTunnel) GetTunnelMethod() SourceMssqlUpdateTunnelMethod {
	return SourceMssqlUpdateTunnelMethodNoTunnel
}

type SourceMssqlUpdateSSHTunnelMethodType string

const (
	SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateNoTunnel               SourceMssqlUpdateSSHTunnelMethodType = "source-mssql-update_No Tunnel"
	SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateSSHKeyAuthentication   SourceMssqlUpdateSSHTunnelMethodType = "source-mssql-update_SSH Key Authentication"
	SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdatePasswordAuthentication SourceMssqlUpdateSSHTunnelMethodType = "source-mssql-update_Password Authentication"
)

// SourceMssqlUpdateSSHTunnelMethod - Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use.
type SourceMssqlUpdateSSHTunnelMethod struct {
	SourceMssqlUpdateNoTunnel               *SourceMssqlUpdateNoTunnel
	SourceMssqlUpdateSSHKeyAuthentication   *SourceMssqlUpdateSSHKeyAuthentication
	SourceMssqlUpdatePasswordAuthentication *SourceMssqlUpdatePasswordAuthentication

	Type SourceMssqlUpdateSSHTunnelMethodType
}

func CreateSourceMssqlUpdateSSHTunnelMethodSourceMssqlUpdateNoTunnel(sourceMssqlUpdateNoTunnel SourceMssqlUpdateNoTunnel) SourceMssqlUpdateSSHTunnelMethod {
	typ := SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateNoTunnel

	return SourceMssqlUpdateSSHTunnelMethod{
		SourceMssqlUpdateNoTunnel: &sourceMssqlUpdateNoTunnel,
		Type:                      typ,
	}
}

func CreateSourceMssqlUpdateSSHTunnelMethodSourceMssqlUpdateSSHKeyAuthentication(sourceMssqlUpdateSSHKeyAuthentication SourceMssqlUpdateSSHKeyAuthentication) SourceMssqlUpdateSSHTunnelMethod {
	typ := SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateSSHKeyAuthentication

	return SourceMssqlUpdateSSHTunnelMethod{
		SourceMssqlUpdateSSHKeyAuthentication: &sourceMssqlUpdateSSHKeyAuthentication,
		Type:                                  typ,
	}
}

func CreateSourceMssqlUpdateSSHTunnelMethodSourceMssqlUpdatePasswordAuthentication(sourceMssqlUpdatePasswordAuthentication SourceMssqlUpdatePasswordAuthentication) SourceMssqlUpdateSSHTunnelMethod {
	typ := SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdatePasswordAuthentication

	return SourceMssqlUpdateSSHTunnelMethod{
		SourceMssqlUpdatePasswordAuthentication: &sourceMssqlUpdatePasswordAuthentication,
		Type:                                    typ,
	}
}

func (u *SourceMssqlUpdateSSHTunnelMethod) UnmarshalJSON(data []byte) error {

	var sourceMssqlUpdateNoTunnel SourceMssqlUpdateNoTunnel = SourceMssqlUpdateNoTunnel{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdateNoTunnel, "", true, true); err == nil {
		u.SourceMssqlUpdateNoTunnel = &sourceMssqlUpdateNoTunnel
		u.Type = SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateNoTunnel
		return nil
	}

	var sourceMssqlUpdateSSHKeyAuthentication SourceMssqlUpdateSSHKeyAuthentication = SourceMssqlUpdateSSHKeyAuthentication{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdateSSHKeyAuthentication, "", true, true); err == nil {
		u.SourceMssqlUpdateSSHKeyAuthentication = &sourceMssqlUpdateSSHKeyAuthentication
		u.Type = SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdateSSHKeyAuthentication
		return nil
	}

	var sourceMssqlUpdatePasswordAuthentication SourceMssqlUpdatePasswordAuthentication = SourceMssqlUpdatePasswordAuthentication{}
	if err := utils.UnmarshalJSON(data, &sourceMssqlUpdatePasswordAuthentication, "", true, true); err == nil {
		u.SourceMssqlUpdatePasswordAuthentication = &sourceMssqlUpdatePasswordAuthentication
		u.Type = SourceMssqlUpdateSSHTunnelMethodTypeSourceMssqlUpdatePasswordAuthentication
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for SourceMssqlUpdateSSHTunnelMethod", string(data))
}

func (u SourceMssqlUpdateSSHTunnelMethod) MarshalJSON() ([]byte, error) {
	if u.SourceMssqlUpdateNoTunnel != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdateNoTunnel, "", true)
	}

	if u.SourceMssqlUpdateSSHKeyAuthentication != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdateSSHKeyAuthentication, "", true)
	}

	if u.SourceMssqlUpdatePasswordAuthentication != nil {
		return utils.MarshalJSON(u.SourceMssqlUpdatePasswordAuthentication, "", true)
	}

	return nil, errors.New("could not marshal union type SourceMssqlUpdateSSHTunnelMethod: all fields are null")
}

type SourceMssqlUpdate struct {
	// The name of the database.
	Database string `json:"database"`
	// The hostname of the database.
	Host string `json:"host"`
	// Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
	JdbcURLParams *string `json:"jdbc_url_params,omitempty"`
	// The password associated with the username.
	Password string `json:"password"`
	// The port of the database.
	Port int64 `json:"port"`
	// Configures how data is extracted from the database.
	ReplicationMethod *UpdateMethod `json:"replication_method,omitempty"`
	// The list of schemas to sync from. Defaults to user. Case sensitive.
	Schemas []string `json:"schemas,omitempty"`
	// The encryption method which is used when communicating with the database.
	SslMethod *SourceMssqlUpdateSSLMethod `json:"ssl_method,omitempty"`
	// Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use.
	TunnelMethod *SourceMssqlUpdateSSHTunnelMethod `json:"tunnel_method,omitempty"`
	// The username which is used to access the database.
	Username string `json:"username"`
}

func (o *SourceMssqlUpdate) GetDatabase() string {
	if o == nil {
		return ""
	}
	return o.Database
}

func (o *SourceMssqlUpdate) GetHost() string {
	if o == nil {
		return ""
	}
	return o.Host
}

func (o *SourceMssqlUpdate) GetJdbcURLParams() *string {
	if o == nil {
		return nil
	}
	return o.JdbcURLParams
}

func (o *SourceMssqlUpdate) GetPassword() string {
	if o == nil {
		return ""
	}
	return o.Password
}

func (o *SourceMssqlUpdate) GetPort() int64 {
	if o == nil {
		return 0
	}
	return o.Port
}

func (o *SourceMssqlUpdate) GetReplicationMethod() *UpdateMethod {
	if o == nil {
		return nil
	}
	return o.ReplicationMethod
}

func (o *SourceMssqlUpdate) GetSchemas() []string {
	if o == nil {
		return nil
	}
	return o.Schemas
}

func (o *SourceMssqlUpdate) GetSslMethod() *SourceMssqlUpdateSSLMethod {
	if o == nil {
		return nil
	}
	return o.SslMethod
}

func (o *SourceMssqlUpdate) GetTunnelMethod() *SourceMssqlUpdateSSHTunnelMethod {
	if o == nil {
		return nil
	}
	return o.TunnelMethod
}

func (o *SourceMssqlUpdate) GetUsername() string {
	if o == nil {
		return ""
	}
	return o.Username
}
