resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      destination_mongodb_authorization_type_login_password = {
        authorization = "login/password"
        password      = "...my_password..."
        username      = "Jimmy.Luettgen63"
      }
    }
    database         = "...my_database..."
    destination_type = "mongodb"
    instance_type = {
      destination_mongodb_mongo_db_instance_type_mongo_db_atlas = {
        cluster_url = "...my_cluster_url..."
        instance    = "atlas"
      }
    }
    tunnel_method = {
      destination_mongodb_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
  }
  name         = "Dewey Leannon"
  workspace_id = "c0b2f2fb-7b19-44a2-b6b2-6916fe1f08f4"
}