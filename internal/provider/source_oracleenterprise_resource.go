// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"context"
	"fmt"
	speakeasy_int64planmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/int64planmodifier"
	speakeasy_listplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/listplanmodifier"
	speakeasy_objectplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/objectplanmodifier"
	speakeasy_stringplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/stringplanmodifier"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/operations"
	"github.com/airbytehq/terraform-provider-airbyte/internal/validators"
	"github.com/hashicorp/terraform-plugin-framework-validators/int64validator"
	"github.com/hashicorp/terraform-plugin-framework-validators/listvalidator"
	"github.com/hashicorp/terraform-plugin-framework-validators/objectvalidator"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/booldefault"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/int64default"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringdefault"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ resource.Resource = &SourceOracleEnterpriseResource{}
var _ resource.ResourceWithImportState = &SourceOracleEnterpriseResource{}

func NewSourceOracleEnterpriseResource() resource.Resource {
	return &SourceOracleEnterpriseResource{}
}

// SourceOracleEnterpriseResource defines the resource implementation.
type SourceOracleEnterpriseResource struct {
	client *sdk.SDK
}

// SourceOracleEnterpriseResourceModel describes the resource data model.
type SourceOracleEnterpriseResourceModel struct {
	Configuration      tfTypes.SourceOracleEnterprise      `tfsdk:"configuration"`
	CreatedAt          types.Int64                         `tfsdk:"created_at"`
	DefinitionID       types.String                        `tfsdk:"definition_id"`
	Name               types.String                        `tfsdk:"name"`
	ResourceAllocation *tfTypes.ScopedResourceRequirements `tfsdk:"resource_allocation"`
	SecretID           types.String                        `tfsdk:"secret_id"`
	SourceID           types.String                        `tfsdk:"source_id"`
	SourceType         types.String                        `tfsdk:"source_type"`
	WorkspaceID        types.String                        `tfsdk:"workspace_id"`
}

func (r *SourceOracleEnterpriseResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_oracle_enterprise"
}

func (r *SourceOracleEnterpriseResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceOracleEnterprise Resource",
		Attributes: map[string]schema.Attribute{
			"configuration": schema.SingleNestedAttribute{
				Required: true,
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"check_privileges": schema.BoolAttribute{
						Computed:    true,
						Optional:    true,
						Default:     booldefault.StaticBool(true),
						Description: `When this feature is enabled, during schema discovery the connector will query each table or view individually to check access privileges and inaccessible tables, views, or columns therein will be removed. In large schemas, this might cause schema discovery to take too long, in which case it might be advisable to disable this feature. Default: true`,
					},
					"checkpoint_target_interval_seconds": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(300),
						Description: `How often (in seconds) a stream should checkpoint, when possible. Default: 300`,
					},
					"concurrency": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(1),
						Description: `Maximum number of concurrent queries to the database. Default: 1`,
					},
					"connection_data": schema.SingleNestedAttribute{
						Required: true,
						Attributes: map[string]schema.Attribute{
							"service_name": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"connection_type": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`service_name`),
										Description: `Default: "service_name"; must be "service_name"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"service_name",
											),
										},
									},
									"service_name": schema.StringAttribute{
										Required: true,
									},
								},
								Description: `Use service name.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("system_idsid"),
									}...),
								},
							},
							"system_idsid": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"connection_type": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`sid`),
										Description: `Default: "sid"; must be "sid"`,
										Validators: []validator.String{
											stringvalidator.OneOf("sid"),
										},
									},
									"sid": schema.StringAttribute{
										Required: true,
									},
								},
								Description: `Use Oracle System Identifier.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("service_name"),
									}...),
								},
							},
						},
						Description: `The scheme by which to establish a database connection.`,
					},
					"cursor": schema.SingleNestedAttribute{
						Required: true,
						Attributes: map[string]schema.Attribute{
							"read_changes_using_change_data_capture_cdc": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"cursor_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`cdc`),
										Description: `Default: "cdc"; must be "cdc"`,
										Validators: []validator.String{
											stringvalidator.OneOf("cdc"),
										},
									},
									"debezium_shutdown_timeout_seconds": schema.Int64Attribute{
										Computed:    true,
										Optional:    true,
										Default:     int64default.StaticInt64(60),
										Description: `The amount of time to allow the Debezium Engine to shut down, in seconds. Default: 60`,
									},
									"initial_load_timeout_hours": schema.Int64Attribute{
										Computed:    true,
										Optional:    true,
										Default:     int64default.StaticInt64(8),
										Description: `The amount of time an initial load is allowed to continue for before catching up on CDC events. Default: 8`,
									},
									"invalid_cdc_cursor_position_behavior": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`Fail sync`),
										Description: `Determines whether Airbyte should fail or re-sync data in case of an stale/invalid cursor value in the mined logs. If 'Fail sync' is chosen, a user will have to manually reset the connection before being able to continue syncing data. If 'Re-sync data' is chosen, Airbyte will automatically trigger a refresh but could lead to higher cloud costs and data loss. Default: "Fail sync"; must be one of ["Fail sync", "Re-sync data"]`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"Fail sync",
												"Re-sync data",
											),
										},
									},
								},
								Description: `<i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using Oracle's <a href="https://docs.airbyte.com/integrations/enterprise-connectors/source-oracle#getting-started"> change data capture feature</a>. This must be enabled on your database.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("scan_changes_with_user_defined_cursor"),
									}...),
								},
							},
							"scan_changes_with_user_defined_cursor": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"cursor_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`user_defined`),
										Description: `Default: "user_defined"; must be "user_defined"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"user_defined",
											),
										},
									},
								},
								Description: `Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at).`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("read_changes_using_change_data_capture_cdc"),
									}...),
								},
							},
						},
						Description: `Configures how data is extracted from the database.`,
					},
					"encryption": schema.SingleNestedAttribute{
						Required: true,
						Attributes: map[string]schema.Attribute{
							"native_network_encryption_nne": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"encryption_algorithm": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`AES256`),
										Description: `This parameter defines what encryption algorithm is used. Default: "AES256"; must be one of ["AES256", "AES192", "AES128", "3DES168", "3DES112", "DES"]`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"AES256",
												"AES192",
												"AES128",
												"3DES168",
												"3DES112",
												"DES",
											),
										},
									},
									"encryption_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`client_nne`),
										Description: `Default: "client_nne"; must be "client_nne"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"client_nne",
											),
										},
									},
								},
								Description: `The native network encryption gives you the ability to encrypt database connections, without the configuration overhead of TCP/IP and SSL/TLS and without the need to open and listen on different ports.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("tls_encrypted_verify_certificate"),
										path.MatchRelative().AtParent().AtName("unencrypted"),
									}...),
								},
							},
							"tls_encrypted_verify_certificate": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"encryption_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`encrypted_verify_certificate`),
										Description: `Default: "encrypted_verify_certificate"; must be "encrypted_verify_certificate"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"encrypted_verify_certificate",
											),
										},
									},
									"ssl_certificate": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations.`,
									},
								},
								Description: `Verify and use the certificate provided by the server.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("native_network_encryption_nne"),
										path.MatchRelative().AtParent().AtName("unencrypted"),
									}...),
								},
							},
							"unencrypted": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"encryption_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`unencrypted`),
										Description: `Default: "unencrypted"; must be "unencrypted"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"unencrypted",
											),
										},
									},
								},
								Description: `Data transfer will not be encrypted.`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("native_network_encryption_nne"),
										path.MatchRelative().AtParent().AtName("tls_encrypted_verify_certificate"),
									}...),
								},
							},
						},
						Description: `The encryption method with is used when communicating with the database.`,
					},
					"host": schema.StringAttribute{
						Required:    true,
						Description: `Hostname of the database.`,
					},
					"jdbc_url_params": schema.StringAttribute{
						Optional:    true,
						Description: `Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).`,
					},
					"password": schema.StringAttribute{
						Optional:    true,
						Sensitive:   true,
						Description: `The password associated with the username.`,
					},
					"port": schema.Int64Attribute{
						Computed: true,
						Optional: true,
						Default:  int64default.StaticInt64(1521),
						MarkdownDescription: `Port of the database.` + "\n" +
							`Oracle Corporations recommends the following port numbers:` + "\n" +
							`1521 - Default listening port for client connections to the listener. ` + "\n" +
							`2484 - Recommended and officially registered listening port for client connections to the listener using TCP/IP with SSL.` + "\n" +
							`Default: 1521`,
						Validators: []validator.Int64{
							int64validator.AtMost(65536),
						},
					},
					"schemas": schema.ListAttribute{
						Optional:    true,
						ElementType: types.StringType,
						Description: `The list of schemas to sync from. Defaults to user. Case sensitive.`,
						Validators: []validator.List{
							listvalidator.UniqueValues(),
						},
					},
					"tunnel_method": schema.SingleNestedAttribute{
						Required: true,
						Attributes: map[string]schema.Attribute{
							"no_tunnel": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"tunnel_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`NO_TUNNEL`),
										Description: `Default: "NO_TUNNEL"; must be "NO_TUNNEL"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"NO_TUNNEL",
											),
										},
									},
								},
								Description: `No ssh tunnel needed to connect to database`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("password_authentication"),
										path.MatchRelative().AtParent().AtName("ssh_key_authentication"),
									}...),
								},
							},
							"password_authentication": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"tunnel_host": schema.StringAttribute{
										Required:    true,
										Description: `Hostname of the jump server host that allows inbound ssh tunnel.`,
									},
									"tunnel_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`SSH_PASSWORD_AUTH`),
										Description: `Default: "SSH_PASSWORD_AUTH"; must be "SSH_PASSWORD_AUTH"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"SSH_PASSWORD_AUTH",
											),
										},
									},
									"tunnel_port": schema.Int64Attribute{
										Computed:    true,
										Optional:    true,
										Default:     int64default.StaticInt64(22),
										Description: `Port on the proxy/jump server that accepts inbound ssh connections. Default: 22`,
										Validators: []validator.Int64{
											int64validator.AtMost(65536),
										},
									},
									"tunnel_user": schema.StringAttribute{
										Required:    true,
										Description: `OS-level username for logging into the jump server host`,
									},
									"tunnel_user_password": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `OS-level password for logging into the jump server host`,
									},
								},
								Description: `Connect through a jump server tunnel host using username and password authentication`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("no_tunnel"),
										path.MatchRelative().AtParent().AtName("ssh_key_authentication"),
									}...),
								},
							},
							"ssh_key_authentication": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"additional_properties": schema.StringAttribute{
										Optional:    true,
										Description: `Parsed as JSON.`,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
									},
									"ssh_key": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )`,
									},
									"tunnel_host": schema.StringAttribute{
										Required:    true,
										Description: `Hostname of the jump server host that allows inbound ssh tunnel.`,
									},
									"tunnel_method": schema.StringAttribute{
										Computed:    true,
										Optional:    true,
										Default:     stringdefault.StaticString(`SSH_KEY_AUTH`),
										Description: `Default: "SSH_KEY_AUTH"; must be "SSH_KEY_AUTH"`,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"SSH_KEY_AUTH",
											),
										},
									},
									"tunnel_port": schema.Int64Attribute{
										Computed:    true,
										Optional:    true,
										Default:     int64default.StaticInt64(22),
										Description: `Port on the proxy/jump server that accepts inbound ssh connections. Default: 22`,
										Validators: []validator.Int64{
											int64validator.AtMost(65536),
										},
									},
									"tunnel_user": schema.StringAttribute{
										Required:    true,
										Description: `OS-level username for logging into the jump server host`,
									},
								},
								Description: `Connect through a jump server tunnel host using username and ssh key`,
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("no_tunnel"),
										path.MatchRelative().AtParent().AtName("password_authentication"),
									}...),
								},
							},
						},
						Description: `Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use.`,
					},
					"username": schema.StringAttribute{
						Required:    true,
						Description: `The username which is used to access the database.`,
					},
				},
			},
			"created_at": schema.Int64Attribute{
				Computed: true,
				PlanModifiers: []planmodifier.Int64{
					speakeasy_int64planmodifier.SuppressDiff(speakeasy_int64planmodifier.ExplicitSuppress),
				},
			},
			"definition_id": schema.StringAttribute{
				Computed: true,
				Optional: true,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplaceIfConfigured(),
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
				Description: `The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.`,
			},
			"name": schema.StringAttribute{
				Required: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
				Description: `Name of the source e.g. dev-mysql-instance.`,
			},
			"resource_allocation": schema.SingleNestedAttribute{
				Computed: true,
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"default": schema.SingleNestedAttribute{
						Computed: true,
						PlanModifiers: []planmodifier.Object{
							speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
						},
						Attributes: map[string]schema.Attribute{
							"cpu_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"cpu_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
						},
						Description: `optional resource requirements to run workers (blank for unbounded allocations)`,
					},
					"job_specific": schema.ListNestedAttribute{
						Computed: true,
						PlanModifiers: []planmodifier.List{
							speakeasy_listplanmodifier.SuppressDiff(speakeasy_listplanmodifier.ExplicitSuppress),
						},
						NestedObject: schema.NestedAttributeObject{
							PlanModifiers: []planmodifier.Object{
								speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
							},
							Attributes: map[string]schema.Attribute{
								"job_type": schema.StringAttribute{
									Computed: true,
									PlanModifiers: []planmodifier.String{
										speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
									},
									Description: `enum that describes the different types of jobs that the platform runs. must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]`,
									Validators: []validator.String{
										stringvalidator.OneOf(
											"get_spec",
											"check_connection",
											"discover_schema",
											"sync",
											"reset_connection",
											"connection_updater",
											"replicate",
										),
									},
								},
								"resource_requirements": schema.SingleNestedAttribute{
									Computed: true,
									PlanModifiers: []planmodifier.Object{
										speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
									},
									Attributes: map[string]schema.Attribute{
										"cpu_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"cpu_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
									},
									Description: `optional resource requirements to run workers (blank for unbounded allocations)`,
								},
							},
						},
					},
				},
				Description: `actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level.`,
			},
			"secret_id": schema.StringAttribute{
				Optional: true,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplaceIfConfigured(),
				},
				Description: `Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.`,
			},
			"source_id": schema.StringAttribute{
				Computed: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
			"source_type": schema.StringAttribute{
				Computed: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
			"workspace_id": schema.StringAttribute{
				Required: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
		},
	}
}

func (r *SourceOracleEnterpriseResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	// Prevent panic if the provider has not been configured.
	if req.ProviderData == nil {
		return
	}

	client, ok := req.ProviderData.(*sdk.SDK)

	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected Resource Configure Type",
			fmt.Sprintf("Expected *sdk.SDK, got: %T. Please report this issue to the provider developers.", req.ProviderData),
		)

		return
	}

	r.client = client
}

func (r *SourceOracleEnterpriseResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var data *SourceOracleEnterpriseResourceModel
	var plan types.Object

	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(plan.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	request := data.ToSharedSourceOracleEnterpriseCreateRequest()
	res, err := r.client.Sources.CreateSourceOracleEnterprise(ctx, request)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if res.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	if !(res.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)
	var sourceID string
	sourceID = data.SourceID.ValueString()

	request1 := operations.GetSourceOracleEnterpriseRequest{
		SourceID: sourceID,
	}
	res1, err := r.client.Sources.GetSourceOracleEnterprise(ctx, request1)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res1 != nil && res1.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res1.RawResponse))
		}
		return
	}
	if res1 == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res1))
		return
	}
	if res1.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res1.StatusCode), debugResponse(res1.RawResponse))
		return
	}
	if !(res1.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res1.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res1.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceOracleEnterpriseResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var data *SourceOracleEnterpriseResourceModel
	var item types.Object

	resp.Diagnostics.Append(req.State.Get(ctx, &item)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(item.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	request := operations.GetSourceOracleEnterpriseRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceOracleEnterprise(ctx, request)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if res.StatusCode == 404 {
		resp.State.RemoveResource(ctx)
		return
	}
	if res.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	if !(res.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res.SourceResponse)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceOracleEnterpriseResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var data *SourceOracleEnterpriseResourceModel
	var plan types.Object

	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	merge(ctx, req, resp, &data)
	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	sourceOracleEnterprisePutRequest := data.ToSharedSourceOracleEnterprisePutRequest()
	request := operations.PutSourceOracleEnterpriseRequest{
		SourceID:                         sourceID,
		SourceOracleEnterprisePutRequest: sourceOracleEnterprisePutRequest,
	}
	res, err := r.client.Sources.PutSourceOracleEnterprise(ctx, request)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if fmt.Sprintf("%v", res.StatusCode)[0] != '2' {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	refreshPlan(ctx, plan, &data, resp.Diagnostics)
	var sourceId1 string
	sourceId1 = data.SourceID.ValueString()

	request1 := operations.GetSourceOracleEnterpriseRequest{
		SourceID: sourceId1,
	}
	res1, err := r.client.Sources.GetSourceOracleEnterprise(ctx, request1)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res1 != nil && res1.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res1.RawResponse))
		}
		return
	}
	if res1 == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res1))
		return
	}
	if res1.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res1.StatusCode), debugResponse(res1.RawResponse))
		return
	}
	if !(res1.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res1.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res1.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceOracleEnterpriseResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var data *SourceOracleEnterpriseResourceModel
	var item types.Object

	resp.Diagnostics.Append(req.State.Get(ctx, &item)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(item.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	request := operations.DeleteSourceOracleEnterpriseRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.DeleteSourceOracleEnterprise(ctx, request)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if fmt.Sprintf("%v", res.StatusCode)[0] != '2' {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}

}

func (r *SourceOracleEnterpriseResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resp.Diagnostics.Append(resp.State.SetAttribute(ctx, path.Root("source_id"), req.ID)...)
}
