// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationOracleSSHTunnelMethod struct {
	NoTunnel               *DestinationOracleNoTunnel               `queryParam:"inline" tfsdk:"no_tunnel" tfPlanOnly:"true"`
	PasswordAuthentication *DestinationOraclePasswordAuthentication `queryParam:"inline" tfsdk:"password_authentication" tfPlanOnly:"true"`
	SSHKeyAuthentication   *DestinationOracleSSHKeyAuthentication   `queryParam:"inline" tfsdk:"ssh_key_authentication" tfPlanOnly:"true"`
}
