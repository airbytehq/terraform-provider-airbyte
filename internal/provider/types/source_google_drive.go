// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceGoogleDrive struct {
	Credentials    SourceGoogleDriveAuthentication          `tfsdk:"credentials"`
	DeliveryMethod *DeliveryMethod                          `tfsdk:"delivery_method"`
	FolderURL      types.String                             `tfsdk:"folder_url"`
	StartDate      types.String                             `tfsdk:"start_date"`
	Streams        []SourceGoogleDriveFileBasedStreamConfig `tfsdk:"streams"`
}
