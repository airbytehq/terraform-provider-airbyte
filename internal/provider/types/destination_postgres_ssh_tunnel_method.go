// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationPostgresSSHTunnelMethod struct {
	NoTunnel               *DestinationPostgresNoTunnel               `queryParam:"inline" tfsdk:"no_tunnel" tfPlanOnly:"true"`
	PasswordAuthentication *DestinationPostgresPasswordAuthentication `queryParam:"inline" tfsdk:"password_authentication" tfPlanOnly:"true"`
	SSHKeyAuthentication   *DestinationPostgresSSHKeyAuthentication   `queryParam:"inline" tfsdk:"ssh_key_authentication" tfPlanOnly:"true"`
}
