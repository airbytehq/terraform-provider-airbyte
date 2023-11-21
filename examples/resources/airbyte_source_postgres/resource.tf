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
      source_postgres_allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      source_postgres_no_tunnel = {}
    }
    username = "Dagmar_Towne8"
  }
  definition_id = "558e983f-33bb-4c2f-8e75-b95ee5dd11c7"
  name          = "Brandi Gerhold"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aa4d1c74-fcd7-4d93-9b8b-6b2c0920aa8b"
}