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
    username = "Ursula46"
  }
  definition_id = "0c28b278-d25e-44ee-8a51-abe7bbe4e8da"
  name          = "Lana Littel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba5cf8db-48a2-4cc4-847b-120c3ecc1558"
}