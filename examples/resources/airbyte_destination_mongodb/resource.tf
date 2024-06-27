resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Ryleigh43"
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
      no_tunnel = {}
    }
  }
  definition_id = "e75f1c50-c9ec-4767-87b0-6cf86fe4a6f8"
  name          = "Mr. Malcolm Lubowitz"
  workspace_id  = "d646f802-e7b2-4183-b2bc-4f6db7afdaca"
}