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
    username = "Luigi_Murray"
  }
  name         = "Arlene O'Kon V"
  secret_id    = "...my_secret_id..."
  workspace_id = "fd2caf83-f045-4910-a7c5-70570b889169"
}