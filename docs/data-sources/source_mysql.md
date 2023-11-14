---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_mysql Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceMysql DataSource
---

# airbyte_source_mysql (Data Source)

SourceMysql DataSource

## Example Usage

```terraform
data "airbyte_source_mysql" "my_source_mysql" {
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

- `database` (String) The database name.
- `host` (String) The host name of the database.
- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3). For more information read about <a href="https://dev.mysql.com/doc/connector-j/8.0/en/connector-j-reference-jdbc-url-format.html">JDBC URL parameters</a>.
- `password` (String) The password associated with the username.
- `port` (Number) The port to connect to.
- `replication_method` (Attributes) Configures how data is extracted from the database. (see [below for nested schema](#nestedatt--configuration--replication_method))
- `source_type` (String) must be one of ["mysql"]
- `ssl_mode` (Attributes) SSL connection modes. Read more <a href="https://dev.mysql.com/doc/connector-j/8.0/en/connector-j-reference-using-ssl.html"> in the docs</a>. (see [below for nested schema](#nestedatt--configuration--ssl_mode))
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))
- `username` (String) The username which is used to access the database.

<a id="nestedatt--configuration--replication_method"></a>
### Nested Schema for `configuration.replication_method`

Read-Only:

- `source_mysql_update_method_read_changes_using_binary_log_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the MySQL <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">binary log</a>. This must be enabled on your database. (see [below for nested schema](#nestedatt--configuration--replication_method--source_mysql_update_method_read_changes_using_binary_log_cdc))
- `source_mysql_update_method_scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--source_mysql_update_method_scan_changes_with_user_defined_cursor))
- `source_mysql_update_update_method_read_changes_using_binary_log_cdc` (Attributes) <i>Recommended</i> - Incrementally reads new inserts, updates, and deletes using the MySQL <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">binary log</a>. This must be enabled on your database. (see [below for nested schema](#nestedatt--configuration--replication_method--source_mysql_update_update_method_read_changes_using_binary_log_cdc))
- `source_mysql_update_update_method_scan_changes_with_user_defined_cursor` (Attributes) Incrementally detects new inserts and updates using the <a href="https://docs.airbyte.com/understanding-airbyte/connections/incremental-append/#user-defined-cursor">cursor column</a> chosen when configuring a connection (e.g. created_at, updated_at). (see [below for nested schema](#nestedatt--configuration--replication_method--source_mysql_update_update_method_scan_changes_with_user_defined_cursor))

<a id="nestedatt--configuration--replication_method--source_mysql_update_method_read_changes_using_binary_log_cdc"></a>
### Nested Schema for `configuration.replication_method.source_mysql_update_method_read_changes_using_binary_log_cdc`

Read-Only:

- `initial_waiting_seconds` (Number) The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 300 seconds. Valid range: 120 seconds to 1200 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">initial waiting time</a>.
- `method` (String) must be one of ["CDC"]
- `server_time_zone` (String) Enter the configured MySQL server timezone. This should only be done if the configured timezone in your MySQL instance does not conform to IANNA standard.


<a id="nestedatt--configuration--replication_method--source_mysql_update_method_scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.source_mysql_update_method_scan_changes_with_user_defined_cursor`

Read-Only:

- `method` (String) must be one of ["STANDARD"]


<a id="nestedatt--configuration--replication_method--source_mysql_update_update_method_read_changes_using_binary_log_cdc"></a>
### Nested Schema for `configuration.replication_method.source_mysql_update_update_method_read_changes_using_binary_log_cdc`

Read-Only:

- `initial_waiting_seconds` (Number) The amount of time the connector will wait when it launches to determine if there is new data to sync or not. Defaults to 300 seconds. Valid range: 120 seconds to 1200 seconds. Read about <a href="https://docs.airbyte.com/integrations/sources/mysql/#change-data-capture-cdc">initial waiting time</a>.
- `method` (String) must be one of ["CDC"]
- `server_time_zone` (String) Enter the configured MySQL server timezone. This should only be done if the configured timezone in your MySQL instance does not conform to IANNA standard.


<a id="nestedatt--configuration--replication_method--source_mysql_update_update_method_scan_changes_with_user_defined_cursor"></a>
### Nested Schema for `configuration.replication_method.source_mysql_update_update_method_scan_changes_with_user_defined_cursor`

Read-Only:

- `method` (String) must be one of ["STANDARD"]



<a id="nestedatt--configuration--ssl_mode"></a>
### Nested Schema for `configuration.ssl_mode`

Read-Only:

- `source_mysql_ssl_modes_preferred` (Attributes) Automatically attempt SSL connection. If the MySQL server does not support SSL, continue with a regular connection. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_preferred))
- `source_mysql_ssl_modes_required` (Attributes) Always connect with SSL. If the MySQL server doesn’t support SSL, the connection will not be established. Certificate Authority (CA) and Hostname are not verified. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_required))
- `source_mysql_ssl_modes_verify_ca` (Attributes) Always connect with SSL. Verifies CA, but allows connection even if Hostname does not match. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_verify_ca))
- `source_mysql_ssl_modes_verify_identity` (Attributes) Always connect with SSL. Verify both CA and Hostname. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_verify_identity))
- `source_mysql_update_ssl_modes_preferred` (Attributes) Automatically attempt SSL connection. If the MySQL server does not support SSL, continue with a regular connection. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_preferred))
- `source_mysql_update_ssl_modes_required` (Attributes) Always connect with SSL. If the MySQL server doesn’t support SSL, the connection will not be established. Certificate Authority (CA) and Hostname are not verified. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_required))
- `source_mysql_update_ssl_modes_verify_ca` (Attributes) Always connect with SSL. Verifies CA, but allows connection even if Hostname does not match. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_verify_ca))
- `source_mysql_update_ssl_modes_verify_identity` (Attributes) Always connect with SSL. Verify both CA and Hostname. (see [below for nested schema](#nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_verify_identity))

<a id="nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_preferred"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_ssl_modes_preferred`

Read-Only:

- `mode` (String) must be one of ["preferred"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_required"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_ssl_modes_required`

Read-Only:

- `mode` (String) must be one of ["required"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_verify_ca"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_ssl_modes_verify_ca`

Read-Only:

- `ca_certificate` (String) CA certificate
- `client_certificate` (String) Client certificate (this is not a required field, but if you want to use it, you will need to add the <b>Client key</b> as well)
- `client_key` (String) Client key (this is not a required field, but if you want to use it, you will need to add the <b>Client certificate</b> as well)
- `client_key_password` (String) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) must be one of ["verify_ca"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_ssl_modes_verify_identity"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_ssl_modes_verify_identity`

Read-Only:

- `ca_certificate` (String) CA certificate
- `client_certificate` (String) Client certificate (this is not a required field, but if you want to use it, you will need to add the <b>Client key</b> as well)
- `client_key` (String) Client key (this is not a required field, but if you want to use it, you will need to add the <b>Client certificate</b> as well)
- `client_key_password` (String) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) must be one of ["verify_identity"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_preferred"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_update_ssl_modes_preferred`

Read-Only:

- `mode` (String) must be one of ["preferred"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_required"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_update_ssl_modes_required`

Read-Only:

- `mode` (String) must be one of ["required"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_verify_ca"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_update_ssl_modes_verify_ca`

Read-Only:

- `ca_certificate` (String) CA certificate
- `client_certificate` (String) Client certificate (this is not a required field, but if you want to use it, you will need to add the <b>Client key</b> as well)
- `client_key` (String) Client key (this is not a required field, but if you want to use it, you will need to add the <b>Client certificate</b> as well)
- `client_key_password` (String) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) must be one of ["verify_ca"]


<a id="nestedatt--configuration--ssl_mode--source_mysql_update_ssl_modes_verify_identity"></a>
### Nested Schema for `configuration.ssl_mode.source_mysql_update_ssl_modes_verify_identity`

Read-Only:

- `ca_certificate` (String) CA certificate
- `client_certificate` (String) Client certificate (this is not a required field, but if you want to use it, you will need to add the <b>Client key</b> as well)
- `client_key` (String) Client key (this is not a required field, but if you want to use it, you will need to add the <b>Client certificate</b> as well)
- `client_key_password` (String) Password for keystorage. This field is optional. If you do not add it - the password will be generated automatically.
- `mode` (String) must be one of ["verify_identity"]



<a id="nestedatt--configuration--tunnel_method"></a>
### Nested Schema for `configuration.tunnel_method`

Read-Only:

- `source_mysql_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_no_tunnel))
- `source_mysql_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_password_authentication))
- `source_mysql_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_ssh_key_authentication))
- `source_mysql_update_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_no_tunnel))
- `source_mysql_update_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_password_authentication))
- `source_mysql_update_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_ssh_key_authentication))

<a id="nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_mysql_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.


<a id="nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_update_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_update_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_mysql_update_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_mysql_update_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.

