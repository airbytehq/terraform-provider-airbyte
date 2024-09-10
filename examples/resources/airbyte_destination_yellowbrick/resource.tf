resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl             = false
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Heath_Klocko"
  }
  definition_id = "9a46f396-c7c6-4bf7-b724-213ca1059f1e"
  name          = "Patricia Franecki DVM"
  workspace_id  = "c0eaa506-81bc-43ad-b090-c013842c101e"
}