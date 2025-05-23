---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_postgres Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourcePostgres Resource
---

# airbyte_source_postgres (Resource)

SourcePostgres Resource

## Example Usage

```terraform
resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      # ...
    }
    schemas = [
    ]
    ssl_mode = {
      # ...
    }
    tunnel_method = {
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "be56435e-cbaf-420b-889d-1d220ff21125"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d122fa45-e536-42be-a02d-5e851e4eb0a6"
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

- `database` (String) Name of the database.
- `host` (String) Hostname of the database.
- `username` (String) Username to access the database.

Optional:

- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (Eg. key1=value1&key2=value2&key3=value3). For more information read about <a href="https://jdbc.postgresql.org/documentation/head/connect.html">JDBC URL parameters</a>.
- `password` (String, Sensitive) Password associated with the username.
- `port` (Number) Port of the database. Default: 5432
- `replication_method` (Attributes) Configures how data is extracted from the database. (see [below for nested schema](#nestedatt--configuration--replication_method))
- `schemas` (List of String) The list of schemas (case sensitive) to sync from. Defaults to public.
- `ssl_mode` (Attributes) SSL connection modes. 
  Read more <a href="https://jdbc.postgresql.org/documentation/head/ssl-client.html"> in the docs</a>. (see [below for nested schema](#nestedatt--configuration--ssl_mode))
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))

<a id="nestedatt--configuration--replication_method"></a>
### Nested Schema for `configuration.replication_method`

Optional:

- `detect_changes_with_xmin_system_column` (Attributes) <i>Recommended</i> - Incrementally reads new inserts and updates via Postgres <a href="https://docs.airbyte.com/integrations/sources/postgres/#xmin">Xmin system column</a>. Suitable for databases that have low transaction pressure. (see [below for nested schema](#nestedatt--configuration--replication_method--detect_changes_with_xmin_system_column))
- `read_changes_using_write_ahead_log_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the Postgres <a href="https://docs.airbyte.com/integrations/sources/postgres/#cdc">write-ahead log (WAL)</a>. This needs to be configured on the source database itself. Recommended for tables of any size. (see [below for nested schema](#nestedatt--configuration--replication_method--read_changes_using_write_ahead_log_cdc))
- `scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--scan_changes_with_user_defined_cursor))

<a id="nestedatt--configuration--replication_method--detect_changes_with_xmin_system_column"></a>
### Nested Schema for `configuration.replication_method.detect_changes_with_xmin_system_column`


<a id="nestedatt--configuration--replication_method--read_changes_using_write_ahead_log_cdc"></a>
### Nested Schema for `configuration.replication_method.read_changes_using_write_ahead_log_cdc`

Required:

- `publication` (String) A Postgres publication used for consuming changes. Read about <a href="https://docs.airbyte.com/integrations/sources/postgres#step-4-create-publications-and-replication-identities-for-tables">publications and replication identities</a>.
- `replication_slot` (String) A plugin logical replication slot. Read about <a href="https://docs.airbyte.com/integrations/sources/postgres#step-3-create-replication-slot">replication slots</a>.

Optional:

- `additional_properties` (String) Parsed as JSON.
- `heartbeat_action_query` (String) Specifies a query that the connector executes on the source database when the connector sends a heartbeat message. Please see the <a href="https://docs.airbyte.com/integrations/sources/postgres/postgres-troubleshooting#advanced-wal-disk-consumption-and-heartbeat-action-query">setup guide</a> for how and when to configure this setting. Default: ""
- `initial_load_timeout_hours` (Number) The amount of time an initial load is allowed to continue for before catching up on CDC logs. Default: 8
- `initial_waiting_seconds` (Number) The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 1200 seconds. Valid range: 120 seconds to 2400 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/postgres/postgres-troubleshooting#advanced-setting-up-initial-cdc-waiting-time">initial waiting time</a>. Default: 1200
- `invalid_cdc_cursor_position_behavior` (String) Determines whether Airbyte should fail or re-sync data in case of an stale/invalid cursor value into the WAL. If 'Fail sync' is chosen, a user will have to manually reset the connection before being able to continue syncing data. If 'Re-sync data' is chosen, Airbyte will automatically trigger a refresh but could lead to higher cloud costs and data loss. Default: "Fail sync"; must be one of ["Fail sync", "Re-sync data"]
- `lsn_commit_behaviour` (String) Determines when Airbyte should flush the LSN of processed WAL logs in the source database. `After loading Data in the destination` is default. If `While reading Data` is selected, in case of a downstream failure (while loading data into the destination), next sync would result in a full sync. Default: "After loading Data in the destination"; must be one of ["While reading Data", "After loading Data in the destination"]
- `plugin` (String) A logical decoding plugin installed on the PostgreSQL server. Default: "pgoutput"; must be "pgoutput"
- `queue_size` (Number) The size of the internal queue. This may interfere with memory consumption and efficiency of the connector, please be careful. Default: 10000


<a id="nestedatt--configuration--replication_method--scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.scan_changes_with_user_defined_cursor`



<a id="nestedatt--configuration--ssl_mode"></a>
### Nested Schema for `configuration.ssl_mode`

Optional:

- `allow` (Attributes) Enables encryption only when required by the source database. (see [below for nested schema](#nestedatt--configuration--ssl_mode--allow))
- `disable` (Attributes) Disables encryption of communication between Airbyte and source database. (see [below for nested schema](#nestedatt--configuration--ssl_mode--disable))
- `prefer` (Attributes) Allows unencrypted connection only if the source database does not support encryption. (see [below for nested schema](#nestedatt--configuration--ssl_mode--prefer))
- `require` (Attributes) Always require encryption. If the source database server does not support encryption, connection will fail. (see [below for nested schema](#nestedatt--configuration--ssl_mode--require))
- `verify_ca` (Attributes) Always require encryption and verifies that the source database server has a valid SSL certificate. (see [below for nested schema](#nestedatt--configuration--ssl_mode--verify_ca))
- `verify_full` (Attributes) This is the most secure mode. Always require encryption and verifies the identity of the source database server. (see [below for nested schema](#nestedatt--configuration--ssl_mode--verify_full))

<a id="nestedatt--configuration--ssl_mode--allow"></a>
### Nested Schema for `configuration.ssl_mode.allow`

Optional:

- `additional_properties` (String) Parsed as JSON.


<a id="nestedatt--configuration--ssl_mode--disable"></a>
### Nested Schema for `configuration.ssl_mode.disable`

Optional:

- `additional_properties` (String) Parsed as JSON.


<a id="nestedatt--configuration--ssl_mode--prefer"></a>
### Nested Schema for `configuration.ssl_mode.prefer`

Optional:

- `additional_properties` (String) Parsed as JSON.


<a id="nestedatt--configuration--ssl_mode--require"></a>
### Nested Schema for `configuration.ssl_mode.require`

Optional:

- `additional_properties` (String) Parsed as JSON.


<a id="nestedatt--configuration--ssl_mode--verify_ca"></a>
### Nested Schema for `configuration.ssl_mode.verify_ca`

Required:

- `ca_certificate` (String, Sensitive) CA certificate

Optional:

- `additional_properties` (String) Parsed as JSON.
- `client_certificate` (String, Sensitive) Client certificate
- `client_key` (String, Sensitive) Client key
- `client_key_password` (String, Sensitive) Password for keystorage. If you do not add it - the password will be generated automatically.


<a id="nestedatt--configuration--ssl_mode--verify_full"></a>
### Nested Schema for `configuration.ssl_mode.verify_full`

Required:

- `ca_certificate` (String, Sensitive) CA certificate

Optional:

- `additional_properties` (String) Parsed as JSON.
- `client_certificate` (String, Sensitive) Client certificate
- `client_key` (String, Sensitive) Client key
- `client_key_password` (String, Sensitive) Password for keystorage. If you do not add it - the password will be generated automatically.



<a id="nestedatt--configuration--tunnel_method"></a>
### Nested Schema for `configuration.tunnel_method`

Optional:

- `no_tunnel` (Attributes) (see [below for nested schema](#nestedatt--configuration--tunnel_method--no_tunnel))
- `password_authentication` (Attributes) (see [below for nested schema](#nestedatt--configuration--tunnel_method--password_authentication))
- `ssh_key_authentication` (Attributes) (see [below for nested schema](#nestedatt--configuration--tunnel_method--ssh_key_authentication))

<a id="nestedatt--configuration--tunnel_method--no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.no_tunnel`


<a id="nestedatt--configuration--tunnel_method--password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.password_authentication`

Required:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String, Sensitive) OS-level password for logging into the jump server host

Optional:

- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections. Default: 22


<a id="nestedatt--configuration--tunnel_method--ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.ssh_key_authentication`

Required:

- `ssh_key` (String, Sensitive) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_user` (String) OS-level username for logging into the jump server host.

Optional:

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
terraform import airbyte_source_postgres.my_airbyte_source_postgres ""
```
