// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type DestinationPgvectorProcessingConfigModel struct {
	ChunkOverlap      types.Int64                                      `tfsdk:"chunk_overlap"`
	ChunkSize         types.Int64                                      `tfsdk:"chunk_size"`
	FieldNameMappings []DestinationPgvectorFieldNameMappingConfigModel `tfsdk:"field_name_mappings"`
	MetadataFields    []types.String                                   `tfsdk:"metadata_fields"`
	TextFields        []types.String                                   `tfsdk:"text_fields"`
	TextSplitter      *DestinationPgvectorTextSplitter                 `tfsdk:"text_splitter"`
}
