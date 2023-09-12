resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      source_postgres_update_method_detect_changes_with_xmin_system_column = {
        method = "Xmin"
      }
    }
    schemas = [
      "...",
    ]
    source_type = "postgres"
    ssl_mode = {
      source_postgres_ssl_modes_allow = {
        mode = "allow"
      }
    }
    tunnel_method = {
      source_postgres_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Edwardo.Streich"
  }
  name         = "Roosevelt Cummings"
  secret_id    = "...my_secret_id..."
  workspace_id = "480632b9-954b-46fa-a206-369828553cb1"
}