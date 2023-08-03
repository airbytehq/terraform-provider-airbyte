resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      authorization = "login/password"
      password      = "...my_password..."
      username      = "Garland_Hane23"
    }
    database         = "...my_database..."
    destination_type = "mongodb"
    instance_type = {
      cluster_url = "...my_cluster_url..."
      instance    = "atlas"
    }
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
  }
  name         = "Ernest Labadie"
  workspace_id = "4ed53b88-f3a8-4d8f-9c0b-2f2fb7b194a2"
}