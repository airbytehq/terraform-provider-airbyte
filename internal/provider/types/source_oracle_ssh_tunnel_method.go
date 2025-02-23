// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceOracleSSHTunnelMethod struct {
	NoTunnel               *SourceOracleNoTunnel               `tfsdk:"no_tunnel" tfPlanOnly:"true"`
	PasswordAuthentication *SourceOraclePasswordAuthentication `tfsdk:"password_authentication" tfPlanOnly:"true"`
	SSHKeyAuthentication   *SourceOracleSSHKeyAuthentication   `tfsdk:"ssh_key_authentication" tfPlanOnly:"true"`
}
