---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_mysql Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationMysql Resource
---

# airbyte_destination_mysql (Resource)

DestinationMysql Resource

## Example Usage

```terraform
resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Katrine_Wehner29"
  }
  definition_id = "356f389a-d49d-4bc4-babb-f1994382023b"
  name          = "Angelina Tremblay"
  workspace_id  = "1a7f288a-d3cd-4e3c-9d6f-a94b74b938f8"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the destination e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided. Requires replacement if changed.

### Read-Only

- `destination_id` (String)
- `destination_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `database` (String) Name of the database.
- `host` (String) Hostname of the database.
- `username` (String) Username to use to access the database.

Optional:

- `jdbc_url_params` (String) Additional properties to pass to the JDBC URL string when connecting to the database formatted as 'key=value' pairs separated by the symbol '&'. (example: key1=value1&key2=value2&key3=value3).
- `password` (String, Sensitive) Password associated with the username.
- `port` (Number) Port of the database. Default: 3306
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))

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


