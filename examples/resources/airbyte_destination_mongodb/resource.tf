resource "airbyte_destination_mongodb" "my_destination_mongodb" {
  configuration = {
    auth_type = {
      login_password = {
        password = "...my_password..."
        username = "Ubaldo12"
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
  definition_id = "48d60128-3384-4bd8-bb5c-ce3614854333"
  name          = "Courtney Considine"
  workspace_id  = "5e509f45-2521-4a04-b878-c254cd184fd1"
}