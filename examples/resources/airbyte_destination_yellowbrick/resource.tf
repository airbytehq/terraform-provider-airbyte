resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl             = true
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Cathryn7"
  }
  definition_id = "3ca1059f-1e30-4360-bc0e-aa50681bc3ad"
  name          = "Miss Edward Mueller Sr."
  workspace_id  = "3842c101-e265-4eeb-8230-b15094cc2185"
}