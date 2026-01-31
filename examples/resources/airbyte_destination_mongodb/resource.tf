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