// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationMysqlSSHTunnelMethod struct {
	NoTunnel               *DestinationMysqlNoTunnel               `queryParam:"inline" tfsdk:"no_tunnel" tfPlanOnly:"true"`
	PasswordAuthentication *DestinationMysqlPasswordAuthentication `queryParam:"inline" tfsdk:"password_authentication" tfPlanOnly:"true"`
	SSHKeyAuthentication   *DestinationMysqlSSHKeyAuthentication   `queryParam:"inline" tfsdk:"ssh_key_authentication" tfPlanOnly:"true"`
}
