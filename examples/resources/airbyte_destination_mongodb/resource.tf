resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "...my_username..."
      }
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
      replica_set = {
        instance         = "replica"
        replica_set      = "...my_replica_set..."
        server_addresses = "host1:27017,host2:27017,host3:27017"
      }
      standalone_mongo_db_instance = {
        host     = "...my_host..."
        instance = "standalone"
        port     = 27017
        tls      = false
      }
    }
    tunnel_method = {
      no_tunnel = {
        # ...
      }
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
  }
  definition_id = "ecb670c3-9030-4c95-a447-d69ea2c1371e"
  name          = "...my_name..."
  workspace_id  = "63ac2b57-1c99-4294-8b40-d92cdc44ffaf"
}