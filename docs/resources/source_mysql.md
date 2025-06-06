---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_mysql Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMysql Resource
---

# airbyte_source_mysql (Resource)

SourceMysql Resource

## Example Usage

```terraform
resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    check_privileges                   = false
    checkpoint_target_interval_seconds = 9
    concurrency                        = 2
    database                           = "...my_database..."
    host                               = "...my_host..."
    jdbc_url_params                    = "...my_jdbc_url_params..."
    password                           = "...my_password..."
    port                               = 36347
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        initial_load_timeout_hours           = 1
        invalid_cdc_cursor_position_behavior = "Fail sync"
        method                               = "CDC"
        server_timezone                      = "...my_server_timezone..."
      }
    }
    ssl_mode = {
      # ...
    }
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "...my_username..."
  }
  definition_id = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11f42152-f8a9-43ef-9f56-8a8e0b14bab5"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the source e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.
- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `resource_allocation` (Attributes) actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level. (see [below for nested schema](#nestedatt--resource_allocation))
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `database` (String) The database name.
- `host` (String) Hostname of the database.
- `replication_method` (Attributes) Configures how data is extracted from the database. (see [below for nested schema](#nestedatt--configuration--replication_method))
- `username` (String) The username which is used to access the database.

Optional:

- `check_privileges` (Boolean) When this feature is enabled, during schema discovery the connector will query each table or view individually to check access privileges and inaccessible tables, views, or columns therein will be removed. In large schemas, this might cause schema discovery to take too long, in which case it might be advisable to disable this feature. Default: true
- `checkpoint_target_interval_seconds` (Number) How often (in seconds) a stream should checkpoint, when possible. Default: 300
- `concurrency` (Number) Maximum number of concurrent queries to the database. Default: 1
- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
- `password` (String, Sensitive) The password associated with the username.
- `port` (Number) Port of the database. Default: 3306
- `ssl_mode` (Attributes) The encryption method which is used when communicating with the database. (see [below for nested schema](#nestedatt--configuration--ssl_mode))
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))

<a id="nestedatt--configuration--replication_method"></a>
### Nested Schema for `configuration.replication_method`

Optional:

- `read_changes_using_change_data_capture_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using MySQL's <a href="https://docs.airbyte.com/integrations/sources/mssql/#change-data-capture-cdc"> change data capture feature</a>. This must be enabled on your database. (see [below for nested schema](#nestedatt--configuration--replication_method--read_changes_using_change_data_capture_cdc))
- `scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--scan_changes_with_user_defined_cursor))

<a id="nestedatt--configuration--replication_method--read_changes_using_change_data_capture_cdc"></a>
### Nested Schema for `configuration.replication_method.read_changes_using_change_data_capture_cdc`

Optional:

- `additional_properties` (String) Parsed as JSON.
- `initial_load_timeout_hours` (Number) The amount of time an initial load is allowed to continue for before catching up on CDC logs. Default: 8
- `invalid_cdc_cursor_position_behavior` (String) Determines whether Airbyte should fail or re-sync data in case of an stale/invalid cursor value in the mined logs. If 'Fail sync' is chosen, a user will have to manually reset the connection before being able to continue syncing data. If 'Re-sync data' is chosen, Airbyte will automatically trigger a refresh but could lead to higher cloud costs and data loss. Default: "Fail sync"; must be one of ["Fail sync", "Re-sync data"]
- `method` (String) Default: "CDC"; must be "CDC"
- `server_timezone` (String) Enter the configured MySQL server timezone. This should only be done if the configured timezone in your MySQL instance does not conform to IANNA standard.


<a id="nestedatt--configuration--replication_method--scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.scan_changes_with_user_defined_cursor`

Optional:

- `additional_properties` (String) Parsed as JSON.
- `method` (String) Default: "STANDARD"; must be "STANDARD"



<a id="nestedatt--configuration--ssl_mode"></a>
### Nested Schema for `configuration.ssl_mode`

Optional:

- `preferred` (Attributes) To allow unencrypted communication only when the source doesn't support encryption. (see [below for nested schema](#nestedatt--configuration--ssl_mode--preferred))
- `required` (Attributes) To always require encryption. Note: The connection will fail if the source doesn't support encryption. (see [below for nested schema](#nestedatt--configuration--ssl_mode--required))
- `verify_ca` (Attributes) To always require encryption and verify that the source has a valid SSL certificate. (see [below for nested schema](#nestedatt--configuration--ssl_mode--verify_ca))
- `verify_identity` (Attributes) To always require encryption and verify that the source has a valid SSL certificate. (see [below for nested schema](#nestedatt--configuration--ssl_mode--verify_identity))

<a id="nestedatt--configuration--ssl_mode--preferred"></a>
### Nested Schema for `configuration.ssl_mode.preferred`

Optional:

- `additional_properties` (String) Parsed as JSON.
- `mode` (String) Default: "preferred"; must be "preferred"


<a id="nestedatt--configuration--ssl_mode--required"></a>
### Nested Schema for `configuration.ssl_mode.required`

Optional:

- `additional_properties` (String) Parsed as JSON.
- `mode` (String) Default: "required"; must be "required"


<a id="nestedatt--configuration--ssl_mode--verify_ca"></a>
### Nested Schema for `configuration.ssl_mode.verify_ca`

Required:

- `ca_certificate` (String, Sensitive) CA certificate

Optional:

- `additional_properties` (String) Parsed as JSON.
- `client_certificate` (String, Sensitive) Client certificate (this is not a required field, but if you want to use it, you will need to add the Client key as well)
- `client_key` (String, Sensitive) Client key (this is not a required field, but if you want to use it, you will need to add the Client certificate as well)
- `client_key_password` (String, Sensitive) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) Default: "verify_ca"; must be "verify_ca"


<a id="nestedatt--configuration--ssl_mode--verify_identity"></a>
### Nested Schema for `configuration.ssl_mode.verify_identity`

Required:

- `ca_certificate` (String, Sensitive) CA certificate

Optional:

- `additional_properties` (String) Parsed as JSON.
- `client_certificate` (String, Sensitive) Client certificate (this is not a required field, but if you want to use it, you will need to add the Client key as well)
- `client_key` (String, Sensitive) Client key (this is not a required field, but if you want to use it, you will need to add the Client certificate as well)
- `client_key_password` (String, Sensitive) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) Default: "verify_identity"; must be "verify_identity"



<a id="nestedatt--configuration--tunnel_method"></a>
### Nested Schema for `configuration.tunnel_method`

Optional:

- `no_tunnel` (Attributes) No ssh tunnel needed to connect to database (see [below for nested schema](#nestedatt--configuration--tunnel_method--no_tunnel))
- `password_authentication` (Attributes) Connect through a jump server tunnel host using username and password authentication (see [below for nested schema](#nestedatt--configuration--tunnel_method--password_authentication))
- `ssh_key_authentication` (Attributes) Connect through a jump server tunnel host using username and ssh key (see [below for nested schema](#nestedatt--configuration--tunnel_method--ssh_key_authentication))

<a id="nestedatt--configuration--tunnel_method--no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.no_tunnel`

Optional:

- `additional_properties` (String) Parsed as JSON.
- `tunnel_method` (String) Default: "NO_TUNNEL"; must be "NO_TUNNEL"


<a id="nestedatt--configuration--tunnel_method--password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.password_authentication`

Required:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String, Sensitive) OS-level password for logging into the jump server host

Optional:

- `additional_properties` (String) Parsed as JSON.
- `tunnel_method` (String) Default: "SSH_PASSWORD_AUTH"; must be "SSH_PASSWORD_AUTH"
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections. Default: 22


<a id="nestedatt--configuration--tunnel_method--ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.ssh_key_authentication`

Required:

- `ssh_key` (String, Sensitive) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_user` (String) OS-level username for logging into the jump server host

Optional:

- `additional_properties` (String) Parsed as JSON.
- `tunnel_method` (String) Default: "SSH_KEY_AUTH"; must be "SSH_KEY_AUTH"
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections. Default: 22




<a id="nestedatt--resource_allocation"></a>
### Nested Schema for `resource_allocation`

Read-Only:

- `default` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--default))
- `job_specific` (Attributes List) (see [below for nested schema](#nestedatt--resource_allocation--job_specific))

<a id="nestedatt--resource_allocation--default"></a>
### Nested Schema for `resource_allocation.default`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)


<a id="nestedatt--resource_allocation--job_specific"></a>
### Nested Schema for `resource_allocation.job_specific`

Read-Only:

- `job_type` (String) enum that describes the different types of jobs that the platform runs. must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]
- `resource_requirements` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--job_specific--resource_requirements))

<a id="nestedatt--resource_allocation--job_specific--resource_requirements"></a>
### Nested Schema for `resource_allocation.job_specific.resource_requirements`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_mysql.my_airbyte_source_mysql ""
```
