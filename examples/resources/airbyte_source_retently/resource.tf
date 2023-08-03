resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    credentials = {
      auth_type     = "Client"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    source_type = "retently"
  }
  name         = "Alex Douglas"
  workspace_id = "e060459b-ebba-4d02-b258-6bcf152558da"
}