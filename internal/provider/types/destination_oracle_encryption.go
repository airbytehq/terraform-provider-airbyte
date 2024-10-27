// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

type DestinationOracleEncryption struct {
	NativeNetworkEncryptionNNE    *NativeNetworkEncryptionNNE    `tfsdk:"native_network_encryption_nne" tfPlanOnly:"true"`
	TLSEncryptedVerifyCertificate *TLSEncryptedVerifyCertificate `tfsdk:"tls_encrypted_verify_certificate" tfPlanOnly:"true"`
	Unencrypted                   *Fake                          `tfsdk:"unencrypted" tfPlanOnly:"true"`
}