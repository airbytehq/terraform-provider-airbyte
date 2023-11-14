---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_mssql Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMssql DataSource
---

# airbyte_source_mssql (Data Source)

SourceMssql DataSource

## Example Usage

```terraform
data "airbyte_source_mssql" "my_source_mssql" {
  secret_id = "...my_secret_id..."
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Optional

- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow.

### Read-Only

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String)
- `workspace_id` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Read-Only:

- `database` (String) The name of the database.
- `host` (String) The hostname of the database.
- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
- `password` (String) The password associated with the username.
- `port` (Number) The port of the database.
- `replication_method` (Attributes) Configures how data is extracted from the database. (see [below for nested schema](#nestedatt--configuration--replication_method))
- `schemas` (List of String) The list of schemas to sync from. Defaults to user. Case sensitive.
- `source_type` (String) must be one of ["mssql"]
- `ssl_method` (Attributes) The encryption method which is used when communicating with the database. (see [below for nested schema](#nestedatt--configuration--ssl_method))
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))
- `username` (String) The username which is used to access the database.

<a id="nestedatt--configuration--replication_method"></a>
### Nested Schema for `configuration.replication_method`

Read-Only:

- `source_mssql_update_method_read_changes_using_change_data_capture_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the SQL Server's <a href="https://docs.airbyte.com/integrations/sources/mssql/#change-data-capture-cdc">change data capture feature</a>. This must be enabled on your database. (see [below for nested schema](#nestedatt--configuration--replication_method--source_mssql_update_method_read_changes_using_change_data_capture_cdc))
- `source_mssql_update_method_scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--source_mssql_update_method_scan_changes_with_user_defined_cursor))
- `source_mssql_update_update_method_read_changes_using_change_data_capture_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the SQL Server's <a href="https://docs.airbyte.com/integrations/sources/mssql/#change-data-capture-cdc">change data capture feature</a>. This must be enabled on your database. (see [below for nested schema](#nestedatt--configuration--replication_method--source_mssql_update_update_method_read_changes_using_change_data_capture_cdc))
- `source_mssql_update_update_method_scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--source_mssql_update_update_method_scan_changes_with_user_defined_cursor))

<a id="nestedatt--configuration--replication_method--source_mssql_update_method_read_changes_using_change_data_capture_cdc"></a>
### Nested Schema for `configuration.replication_method.source_mssql_update_method_read_changes_using_change_data_capture_cdc`

Read-Only:

- `data_to_sync` (String) must be one of ["Existing and New", "New Changes Only"]
What data should be synced under the CDC. "Existing and New" will read existing data as a snapshot, and sync new changes through CDC. "New Changes Only" will skip the initial snapshot, and only sync new changes through CDC.
- `initial_waiting_seconds` (Number) The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 300 seconds. Valid range: 120 seconds to 1200 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">initial waiting time</a>.
- `method` (String) must be one of ["CDC"]
- `snapshot_isolation` (String) must be one of ["Snapshot", "Read Committed"]
Existing data in the database are synced through an initial snapshot. This parameter controls the isolation level that will be used during the initial snapshotting. If you choose the "Snapshot" level, you must enable the <a href="https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/sql/snapshot-isolation-in-sql-server">snapshot isolation mode</a> on the database.


<a id="nestedatt--configuration--replication_method--source_mssql_update_method_scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.source_mssql_update_method_scan_changes_with_user_defined_cursor`

Read-Only:

- `method` (String) must be one of ["STANDARD"]


<a id="nestedatt--configuration--replication_method--source_mssql_update_update_method_read_changes_using_change_data_capture_cdc"></a>
### Nested Schema for `configuration.replication_method.source_mssql_update_update_method_read_changes_using_change_data_capture_cdc`

Read-Only:

- `data_to_sync` (String) must be one of ["Existing and New", "New Changes Only"]
What data should be synced under the CDC. "Existing and New" will read existing data as a snapshot, and sync new changes through CDC. "New Changes Only" will skip the initial snapshot, and only sync new changes through CDC.
- `initial_waiting_seconds` (Number) The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 300 seconds. Valid range: 120 seconds to 1200 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">initial waiting time</a>.
- `method` (String) must be one of ["CDC"]
- `snapshot_isolation` (String) must be one of ["Snapshot", "Read Committed"]
Existing data in the database are synced through an initial snapshot. This parameter controls the isolation level that will be used during the initial snapshotting. If you choose the "Snapshot" level, you must enable the <a href="https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/sql/snapshot-isolation-in-sql-server">snapshot isolation mode</a> on the database.


<a id="nestedatt--configuration--replication_method--source_mssql_update_update_method_scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.source_mssql_update_update_method_scan_changes_with_user_defined_cursor`

Read-Only:

- `method` (String) must be one of ["STANDARD"]



<a id="nestedatt--configuration--ssl_method"></a>
### Nested Schema for `configuration.ssl_method`

Read-Only:

- `source_mssql_ssl_method_encrypted_trust_server_certificate` (Attributes) Use the certificate provided by the server without verification. (For testing purposes only!) (see [below for nested schema](#nestedatt--configuration--ssl_method--source_mssql_ssl_method_encrypted_trust_server_certificate))
- `source_mssql_ssl_method_encrypted_verify_certificate` (Attributes) Verify and use the certificate provided by the server. (see [below for nested schema](#nestedatt--configuration--ssl_method--source_mssql_ssl_method_encrypted_verify_certificate))
- `source_mssql_update_ssl_method_encrypted_trust_server_certificate` (Attributes) Use the certificate provided by the server without verification. (For testing purposes only!) (see [below for nested schema](#nestedatt--configuration--ssl_method--source_mssql_update_ssl_method_encrypted_trust_server_certificate))
- `source_mssql_update_ssl_method_encrypted_verify_certificate` (Attributes) Verify and use the certificate provided by the server. (see [below for nested schema](#nestedatt--configuration--ssl_method--source_mssql_update_ssl_method_encrypted_verify_certificate))

<a id="nestedatt--configuration--ssl_method--source_mssql_ssl_method_encrypted_trust_server_certificate"></a>
### Nested Schema for `configuration.ssl_method.source_mssql_ssl_method_encrypted_trust_server_certificate`

Read-Only:

- `ssl_method` (String) must be one of ["encrypted_trust_server_certificate"]


<a id="nestedatt--configuration--ssl_method--source_mssql_ssl_method_encrypted_verify_certificate"></a>
### Nested Schema for `configuration.ssl_method.source_mssql_ssl_method_encrypted_verify_certificate`

Read-Only:

- `host_name_in_certificate` (String) Specifies the host name of the server. The value of this property must match the subject property of the certificate.
- `ssl_method` (String) must be one of ["encrypted_verify_certificate"]


<a id="nestedatt--configuration--ssl_method--source_mssql_update_ssl_method_encrypted_trust_server_certificate"></a>
### Nested Schema for `configuration.ssl_method.source_mssql_update_ssl_method_encrypted_trust_server_certificate`

Read-Only:

- `ssl_method` (String) must be one of ["encrypted_trust_server_certificate"]


<a id="nestedatt--configuration--ssl_method--source_mssql_update_ssl_method_encrypted_verify_certificate"></a>
### Nested Schema for `configuration.ssl_method.source_mssql_update_ssl_method_encrypted_verify_certificate`

Read-Only:

- `host_name_in_certificate` (String) Specifies the host name of the server. The value of this property must match the subject property of the certificate.
- `ssl_method` (String) must be one of ["encrypted_verify_certificate"]



<a id="nestedatt--configuration--tunnel_method"></a>
### Nested Schema for `configuration.tunnel_method`

Read-Only:

- `source_mssql_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_no_tunnel))
- `source_mssql_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_password_authentication))
- `source_mssql_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_ssh_key_authentication))
- `source_mssql_update_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_no_tunnel))
- `source_mssql_update_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_password_authentication))
- `source_mssql_update_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_ssh_key_authentication))

<a id="nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_mssql_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.


<a id="nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_update_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_update_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_mssql_update_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mssql_update_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.

