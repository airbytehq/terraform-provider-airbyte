---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_oracle Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOracle DataSource
---

# airbyte_source_oracle (Data Source)

SourceOracle DataSource

## Example Usage

```terraform
data "airbyte_source_oracle" "my_source_oracle" {
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

- `connection_data` (Attributes) Connect data that will be used for DB connection (see [below for nested schema](#nestedatt--configuration--connection_data))
- `encryption` (Attributes) The encryption method with is used when communicating with the database. (see [below for nested schema](#nestedatt--configuration--encryption))
- `host` (String) Hostname of the database.
- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
- `password` (String) The password associated with the username.
- `port` (Number) Port of the database.
Oracle Corporations recommends the following port numbers:
1521 - Default listening port for client connections to the listener. 
2484 - Recommended and officially registered listening port for client connections to the listener using TCP/IP with SSL
- `schemas` (List of String) The list of schemas to sync from. Defaults to user. Case sensitive.
- `source_type` (String) must be one of ["oracle"]
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))
- `username` (String) The username which is used to access the database.

<a id="nestedatt--configuration--connection_data"></a>
### Nested Schema for `configuration.connection_data`

Read-Only:

- `source_oracle_connect_by_service_name` (Attributes) Use service name (see [below for nested schema](#nestedatt--configuration--connection_data--source_oracle_connect_by_service_name))
- `source_oracle_connect_by_system_id_sid` (Attributes) Use SID (Oracle System Identifier) (see [below for nested schema](#nestedatt--configuration--connection_data--source_oracle_connect_by_system_id_sid))
- `source_oracle_update_connect_by_service_name` (Attributes) Use service name (see [below for nested schema](#nestedatt--configuration--connection_data--source_oracle_update_connect_by_service_name))
- `source_oracle_update_connect_by_system_id_sid` (Attributes) Use SID (Oracle System Identifier) (see [below for nested schema](#nestedatt--configuration--connection_data--source_oracle_update_connect_by_system_id_sid))

<a id="nestedatt--configuration--connection_data--source_oracle_connect_by_service_name"></a>
### Nested Schema for `configuration.connection_data.source_oracle_connect_by_service_name`

Read-Only:

- `connection_type` (String) must be one of ["service_name"]
- `service_name` (String)


<a id="nestedatt--configuration--connection_data--source_oracle_connect_by_system_id_sid"></a>
### Nested Schema for `configuration.connection_data.source_oracle_connect_by_system_id_sid`

Read-Only:

- `connection_type` (String) must be one of ["sid"]
- `sid` (String)


<a id="nestedatt--configuration--connection_data--source_oracle_update_connect_by_service_name"></a>
### Nested Schema for `configuration.connection_data.source_oracle_update_connect_by_service_name`

Read-Only:

- `connection_type` (String) must be one of ["service_name"]
- `service_name` (String)


<a id="nestedatt--configuration--connection_data--source_oracle_update_connect_by_system_id_sid"></a>
### Nested Schema for `configuration.connection_data.source_oracle_update_connect_by_system_id_sid`

Read-Only:

- `connection_type` (String) must be one of ["sid"]
- `sid` (String)



<a id="nestedatt--configuration--encryption"></a>
### Nested Schema for `configuration.encryption`

Read-Only:

- `source_oracle_encryption_native_network_encryption_nne` (Attributes) The native network encryption gives you the ability to encrypt database connections, without the configuration overhead of TCP/IP and SSL/TLS and without the need to open and listen on different ports. (see [below for nested schema](#nestedatt--configuration--encryption--source_oracle_encryption_native_network_encryption_nne))
- `source_oracle_encryption_tls_encrypted_verify_certificate` (Attributes) Verify and use the certificate provided by the server. (see [below for nested schema](#nestedatt--configuration--encryption--source_oracle_encryption_tls_encrypted_verify_certificate))
- `source_oracle_update_encryption_native_network_encryption_nne` (Attributes) The native network encryption gives you the ability to encrypt database connections, without the configuration overhead of TCP/IP and SSL/TLS and without the need to open and listen on different ports. (see [below for nested schema](#nestedatt--configuration--encryption--source_oracle_update_encryption_native_network_encryption_nne))
- `source_oracle_update_encryption_tls_encrypted_verify_certificate` (Attributes) Verify and use the certificate provided by the server. (see [below for nested schema](#nestedatt--configuration--encryption--source_oracle_update_encryption_tls_encrypted_verify_certificate))

<a id="nestedatt--configuration--encryption--source_oracle_encryption_native_network_encryption_nne"></a>
### Nested Schema for `configuration.encryption.source_oracle_encryption_native_network_encryption_nne`

Read-Only:

- `encryption_algorithm` (String) must be one of ["AES256", "RC4_56", "3DES168"]
This parameter defines what encryption algorithm is used.
- `encryption_method` (String) must be one of ["client_nne"]


<a id="nestedatt--configuration--encryption--source_oracle_encryption_tls_encrypted_verify_certificate"></a>
### Nested Schema for `configuration.encryption.source_oracle_encryption_tls_encrypted_verify_certificate`

Read-Only:

- `encryption_method` (String) must be one of ["encrypted_verify_certificate"]
- `ssl_certificate` (String) Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations.


<a id="nestedatt--configuration--encryption--source_oracle_update_encryption_native_network_encryption_nne"></a>
### Nested Schema for `configuration.encryption.source_oracle_update_encryption_native_network_encryption_nne`

Read-Only:

- `encryption_algorithm` (String) must be one of ["AES256", "RC4_56", "3DES168"]
This parameter defines what encryption algorithm is used.
- `encryption_method` (String) must be one of ["client_nne"]


<a id="nestedatt--configuration--encryption--source_oracle_update_encryption_tls_encrypted_verify_certificate"></a>
### Nested Schema for `configuration.encryption.source_oracle_update_encryption_tls_encrypted_verify_certificate`

Read-Only:

- `encryption_method` (String) must be one of ["encrypted_verify_certificate"]
- `ssl_certificate` (String) Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations.



<a id="nestedatt--configuration--tunnel_method"></a>
### Nested Schema for `configuration.tunnel_method`

Read-Only:

- `source_oracle_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_no_tunnel))
- `source_oracle_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_password_authentication))
- `source_oracle_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_ssh_key_authentication))
- `source_oracle_update_ssh_tunnel_method_no_tunnel` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_no_tunnel))
- `source_oracle_update_ssh_tunnel_method_password_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_password_authentication))
- `source_oracle_update_ssh_tunnel_method_ssh_key_authentication` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_ssh_key_authentication))

<a id="nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_oracle_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.


<a id="nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_no_tunnel"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_update_ssh_tunnel_method_no_tunnel`

Read-Only:

- `tunnel_method` (String) must be one of ["NO_TUNNEL"]
No ssh tunnel needed to connect to database


<a id="nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_password_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_update_ssh_tunnel_method_password_authentication`

Read-Only:

- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_PASSWORD_AUTH"]
Connect through a jump server tunnel host using username and password authentication
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host
- `tunnel_user_password` (String) OS-level password for logging into the jump server host


<a id="nestedatt--configuration--tunnel_method--source_oracle_update_ssh_tunnel_method_ssh_key_authentication"></a>
### Nested Schema for `configuration.tunnel_method.source_oracle_update_ssh_tunnel_method_ssh_key_authentication`

Read-Only:

- `ssh_key` (String) OS-level user account ssh key credentials in RSA PEM format ( created with ssh-keygen -t rsa -m PEM -f myuser_rsa )
- `tunnel_host` (String) Hostname of the jump server host that allows inbound ssh tunnel.
- `tunnel_method` (String) must be one of ["SSH_KEY_AUTH"]
Connect through a jump server tunnel host using username and ssh key
- `tunnel_port` (Number) Port on the proxy/jump server that accepts inbound ssh connections.
- `tunnel_user` (String) OS-level username for logging into the jump server host.

