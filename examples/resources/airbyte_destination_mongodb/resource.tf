resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Selina_Armstrong"
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
  definition_id = "2448e4e4-2a53-4050-a9af-bc66c913a5b7"
  name          = "Donald Jast"
  workspace_id  = "6a13d9b7-f635-498f-bb04-2924faeae501"
}