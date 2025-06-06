---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_oracle Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceOracle Resource
---

# airbyte_source_oracle (Resource)

SourceOracle Resource

## Example Usage

```terraform
resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      system_idsid = {
        sid = "...my_sid..."
      }
    }
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "3DES168"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 22568
    schemas = [
      "..."
    ]
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "19b6db41-3eb9-40e4-9d70-9711de027975"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4ecddd5-3505-44b1-8fbf-25c1225b2856"
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

- `host` (String) Hostname of the database.
- `username` (String) The username which is used to access the database.

Optional:

- `connection_data` (Attributes) Connect data that will be used for DB connection (see [below for nested schema](#nestedatt--configuration--connection_data))
- `encryption` (Attributes) The encryption method with is used when communicating with the database. (see [below for nested schema](#nestedatt--configuration--encryption))
- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
- `password` (String, Sensitive) The password associated with the username.
- `port` (Number) Port of the database.
Oracle Corporations recommends the following port numbers:
1521 - Default listening port for client connections to the listener. 
2484 - Recommended and officially registered listening port for client connections to the listener using TCP/IP with SSL
Default: 1521
- `schemas` (List of String) The list of schemas to sync from. Defaults to user. Case sensitive.
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))

<a id="nestedatt--configuration--connection_data"></a>
### Nested Schema for `configuration.connection_data`

Optional:

- `service_name` (Attributes) Use service name (see [below for nested schema](#nestedatt--configuration--connection_data--service_name))
- `system_idsid` (Attributes) Use SID (Oracle System Identifier) (see [below for nested schema](#nestedatt--configuration--connection_data--system_idsid))

<a id="nestedatt--configuration--connection_data--service_name"></a>
### Nested Schema for `configuration.connection_data.service_name`

Required:

- `service_name` (String)


<a id="nestedatt--configuration--connection_data--system_idsid"></a>
### Nested Schema for `configuration.connection_data.system_idsid`

Required:

- `sid` (String)



<a id="nestedatt--configuration--encryption"></a>
### Nested Schema for `configuration.encryption`

Optional:

- `native_network_encryption_nne` (Attributes) The native network encryption gives you the ability to encrypt database connections, without the configuration overhead of TCP/IP and SSL/TLS and without the need to open and listen on different ports. (see [below for nested schema](#nestedatt--configuration--encryption--native_network_encryption_nne))
- `tls_encrypted_verify_certificate` (Attributes) Verify and use the certificate provided by the server. (see [below for nested schema](#nestedatt--configuration--encryption--tls_encrypted_verify_certificate))
- `unencrypted` (Attributes) Data transfer will not be encrypted. (see [below for nested schema](#nestedatt--configuration--encryption--unencrypted))

<a id="nestedatt--configuration--encryption--native_network_encryption_nne"></a>
### Nested Schema for `configuration.encryption.native_network_encryption_nne`

Optional:

- `encryption_algorithm` (String) This parameter defines what encryption algorithm is used. Default: "AES256"; must be one of ["AES256", "RC4_56", "3DES168"]


<a id="nestedatt--configuration--encryption--tls_encrypted_verify_certificate"></a>
### Nested Schema for `configuration.encryption.tls_encrypted_verify_certificate`

Required:

- `ssl_certificate` (String, Sensitive) Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations.


<a id="nestedatt--configuration--encryption--unencrypted"></a>
### Nested Schema for `configuration.encryption.unencrypted`



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
terraform import airbyte_source_oracle.my_airbyte_source_oracle ""
```
