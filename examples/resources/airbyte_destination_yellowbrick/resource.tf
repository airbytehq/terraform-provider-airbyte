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
    username = "Freida38"
  }
  definition_id = "7e5cd333-285c-47cc-bfde-334f786aae3a"
  name          = "Boyd Hamill"
  workspace_id  = "fe19eb1b-f8ee-4233-9467-597e801e6768"
}