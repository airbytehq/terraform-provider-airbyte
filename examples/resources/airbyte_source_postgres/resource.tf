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
    username = "Lee8"
  }
  definition_id = "ebcafaa2-ee7a-41e0-8b61-97095b91e126"
  name          = "Patricia Beatty V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb706bb0-16ea-40ac-abfa-e2b40c173d4d"
}