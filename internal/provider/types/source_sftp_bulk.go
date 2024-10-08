// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceSftpBulk struct {
	Credentials SourceSftpBulkAuthentication     `tfsdk:"credentials"`
	FolderPath  types.String                     `tfsdk:"folder_path"`
	Host        types.String                     `tfsdk:"host"`
	Port        types.Int64                      `tfsdk:"port"`
	StartDate   types.String                     `tfsdk:"start_date"`
	Streams     []SourceGcsFileBasedStreamConfig `tfsdk:"streams"`
	Username    types.String                     `tfsdk:"username"`
}
