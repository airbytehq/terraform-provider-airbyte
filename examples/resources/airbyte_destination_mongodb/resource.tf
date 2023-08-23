resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      destination_mongodb_authorization_type_login_password = {
        authorization = "login/password"
        password      = "...my_password..."
        username      = "Asha61"
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
  name         = "Ms. Kenneth Ledner"
  workspace_id = "a1840394-c260-471f-93f5-f0642dac7af5"
}