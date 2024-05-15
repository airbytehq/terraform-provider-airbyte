resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      detect_changes_with_xmin_system_column = {}
    }
    schemas = [
      "...",
    ]
    ssl_mode = {
      allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Jordy.Dickinson19"
  }
  definition_id = "bbc2f8e7-5b95-4ee5-9d11-c77a4e3aa4d1"
  name          = "Ron Gleichner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7d939b8-b6b2-4c09-a0aa-8be08607521b"
}