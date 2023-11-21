resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Emmalee.Towne89"
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
      destination_mongodb_no_tunnel = {}
    }
  }
  definition_id = "895c9212-6184-452d-9432-f33897fec4ca"
  name          = "Adrienne Lockman"
  workspace_id  = "bf882725-c3c6-4bc3-9a6d-3f396b39ea0e"
}