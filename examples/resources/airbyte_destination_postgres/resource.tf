resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      destination_postgres_no_tunnel = {}
    }
    username = "Burley_Kuhic"
  }
  definition_id = "db19e64b-83f6-43d3-8837-0e173ec9d4f3"
  name          = "Dianna Dooley V"
  workspace_id  = "2a8a43c0-f29f-47cb-912b-320943801c36"
}