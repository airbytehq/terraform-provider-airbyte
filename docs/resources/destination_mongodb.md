---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_mongodb Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationMongodb Resource
---

# airbyte_destination_mongodb (Resource)

DestinationMongodb Resource

## Example Usage

```terraform
resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      none = {
        # ...
      }
    }
    database = "...my_database..."
    instance_type = {
      mongo_db_atlas = {
        cluster_url = "...my_cluster_url..."
        instance    = "atlas"
      }
    }
    tunnel_method = {
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
    }
  }
  definition_id = "ecb670c3-9030-4c95-a447-d69ea2c1371e"
  name          = "...my_name..."
  workspace_id  = "63ac2b57-1c99-4294-8b40-d92cdc44ffaf"
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

- `created_at` (Number)
- `destination_id` (String)
- `destination_type` (String)
- `resource_allocation` (Attributes) actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level. (see [below for nested schema](#nestedatt--resource_allocation))

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `auth_type` (Attributes) Authorization type. (see [below for nested schema](#nestedatt--configuration--auth_type))
- `database` (String) Name of the database.

Optional:

- `instance_type` (Attributes) MongoDb instance to connect to. For MongoDB Atlas and Replica Set TLS connection is used by default. (see [below for nested schema](#nestedatt--configuration--instance_type))
- `tunnel_method` (Attributes) Whether to initiate an SSH tunnel before connecting to the database, and if so, which kind of authentication to use. (see [below for nested schema](#nestedatt--configuration--tunnel_method))

<a id="nestedatt--configuration--auth_type"></a>
### Nested Schema for `configuration.auth_type`

Optional:

- `login_password` (Attributes) Login/Password. (see [below for nested schema](#nestedatt--configuration--auth_type--login_password))
- `none` (Attributes) None. (see [below for nested schema](#nestedatt--configuration--auth_type--none))

<a id="nestedatt--configuration--auth_type--login_password"></a>
### Nested Schema for `configuration.auth_type.login_password`

Required:

- `password` (String, Sensitive) Password associated with the username.
- `username` (String) Username to use to access the database.


<a id="nestedatt--configuration--auth_type--none"></a>
### Nested Schema for `configuration.auth_type.none`



<a id="nestedatt--configuration--instance_type"></a>
### Nested Schema for `configuration.instance_type`

Optional:

- `mongo_db_atlas` (Attributes) (see [below for nested schema](#nestedatt--configuration--instance_type--mongo_db_atlas))
- `replica_set` (Attributes) (see [below for nested schema](#nestedatt--configuration--instance_type--replica_set))
- `standalone_mongo_db_instance` (Attributes) (see [below for nested schema](#nestedatt--configuration--instance_type--standalone_mongo_db_instance))

<a id="nestedatt--configuration--instance_type--mongo_db_atlas"></a>
### Nested Schema for `configuration.instance_type.mongo_db_atlas`

Required:

- `cluster_url` (String) URL of a cluster to connect to.

Optional:

- `instance` (String) Default: "atlas"; must be "atlas"


<a id="nestedatt--configuration--instance_type--replica_set"></a>
### Nested Schema for `configuration.instance_type.replica_set`

Required:

- `server_addresses` (String) The members of a replica set. Please specify `host`:`port` of each member seperated by comma.

Optional:

- `instance` (String) Default: "replica"; must be "replica"
- `replica_set` (String) A replica set name.


<a id="nestedatt--configuration--instance_type--standalone_mongo_db_instance"></a>
### Nested Schema for `configuration.instance_type.standalone_mongo_db_instance`

Required:

- `host` (String) The Host of a Mongo database to be replicated.

Optional:

- `instance` (String) Default: "standalone"; must be "standalone"
- `port` (Number) The Port of a Mongo database to be replicated. Default: 27017
- `tls` (Boolean) Indicates whether TLS encryption protocol will be used to connect to MongoDB. It is recommended to use TLS connection if possible. For more information see <a href="https://docs.airbyte.com/integrations/sources/mongodb-v2">documentation</a>. Default: false



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
terraform import airbyte_destination_mongodb.my_airbyte_destination_mongodb ""
```
