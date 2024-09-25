resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Britney.Feeney86"
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
  definition_id = "76fb78bf-74fa-422d-a127-91b5f134d000"
  name          = "Jamie Metz"
  workspace_id  = "4ae87c30-892f-4fb0-b41f-82248d601283"
}