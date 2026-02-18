package provider

import (
	"context"
	"fmt"

	"github.com/hashicorp/terraform-plugin-framework/resource"
)

type deprecatedResourceWrapper struct {
	inner              resource.Resource
	deprecationMessage string
}

func wrapDeprecatedSource(factory func() resource.Resource) func() resource.Resource {
	return func() resource.Resource {
		return &deprecatedResourceWrapper{
			inner: factory(),
			deprecationMessage: "This resource is deprecated and will be removed in v1.1. " +
				"Use airbyte_source instead (with airbyte_connector_configuration for optional config validation). " +
				"See the v1 migration guide: https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs/guides/v1_migration_guide",
		}
	}
}

func wrapDeprecatedDestination(factory func() resource.Resource) func() resource.Resource {
	return func() resource.Resource {
		return &deprecatedResourceWrapper{
			inner: factory(),
			deprecationMessage: "This resource is deprecated and will be removed in v1.1. " +
				"Use airbyte_destination instead (with airbyte_connector_configuration for optional config validation). " +
				"See the v1 migration guide: https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs/guides/v1_migration_guide",
		}
	}
}

func (w *deprecatedResourceWrapper) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	w.inner.Metadata(ctx, req, resp)
}

func (w *deprecatedResourceWrapper) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	w.inner.Schema(ctx, req, resp)
	resp.Schema.DeprecationMessage = w.deprecationMessage
}

func (w *deprecatedResourceWrapper) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	if configurable, ok := w.inner.(resource.ResourceWithConfigure); ok {
		configurable.Configure(ctx, req, resp)
	}
}

func (w *deprecatedResourceWrapper) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	w.inner.Create(ctx, req, resp)
}

func (w *deprecatedResourceWrapper) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	w.inner.Read(ctx, req, resp)
}

func (w *deprecatedResourceWrapper) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	w.inner.Update(ctx, req, resp)
}

func (w *deprecatedResourceWrapper) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	w.inner.Delete(ctx, req, resp)
}

func (w *deprecatedResourceWrapper) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	if importable, ok := w.inner.(resource.ResourceWithImportState); ok {
		importable.ImportState(ctx, req, resp)
	} else {
		resp.Diagnostics.AddError(
			"Import Not Supported",
			fmt.Sprintf("This resource does not support import."),
		)
	}
}

var _ resource.Resource = &deprecatedResourceWrapper{}
var _ resource.ResourceWithImportState = &deprecatedResourceWrapper{}

type sourceCustomResource struct {
	inner *SourceResource
}

func NewSourceCustomResource() resource.Resource {
	return &sourceCustomResource{inner: &SourceResource{}}
}

func (r *sourceCustomResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_custom"
}

func (r *sourceCustomResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	r.inner.Schema(ctx, req, resp)
	resp.Schema.DeprecationMessage = "This resource is deprecated and will be removed in v1.1. " +
		"Use airbyte_source instead (with airbyte_connector_configuration for optional config validation). " +
		"See the v1 migration guide: https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs/guides/v1_migration_guide"
	resp.Schema.MarkdownDescription = "SourceCustom Resource"
}

func (r *sourceCustomResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	r.inner.Configure(ctx, req, resp)
}

func (r *sourceCustomResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	r.inner.Create(ctx, req, resp)
}

func (r *sourceCustomResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	r.inner.Read(ctx, req, resp)
}

func (r *sourceCustomResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	r.inner.Update(ctx, req, resp)
}

func (r *sourceCustomResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	r.inner.Delete(ctx, req, resp)
}

func (r *sourceCustomResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	r.inner.ImportState(ctx, req, resp)
}

var _ resource.Resource = &sourceCustomResource{}
var _ resource.ResourceWithImportState = &sourceCustomResource{}

type destinationCustomResource struct {
	inner *DestinationResource
}

func NewDestinationCustomResource() resource.Resource {
	return &destinationCustomResource{inner: &DestinationResource{}}
}

func (r *destinationCustomResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_destination_custom"
}

func (r *destinationCustomResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	r.inner.Schema(ctx, req, resp)
	resp.Schema.DeprecationMessage = "This resource is deprecated and will be removed in v1.1. " +
		"Use airbyte_destination instead (with airbyte_connector_configuration for optional config validation). " +
		"See the v1 migration guide: https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs/guides/v1_migration_guide"
	resp.Schema.MarkdownDescription = "DestinationCustom Resource"
}

func (r *destinationCustomResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	r.inner.Configure(ctx, req, resp)
}

func (r *destinationCustomResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	r.inner.Create(ctx, req, resp)
}

func (r *destinationCustomResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	r.inner.Read(ctx, req, resp)
}

func (r *destinationCustomResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	r.inner.Update(ctx, req, resp)
}

func (r *destinationCustomResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	r.inner.Delete(ctx, req, resp)
}

func (r *destinationCustomResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	r.inner.ImportState(ctx, req, resp)
}

var _ resource.Resource = &destinationCustomResource{}
var _ resource.ResourceWithImportState = &destinationCustomResource{}
