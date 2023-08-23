resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    source_type   = "instagram"
    start_date    = "2017-01-25T00:00:00Z"
  }
  name         = "Randal Aufderhar"
  secret_id    = "...my_secret_id..."
  workspace_id = "640d6a18-31c8-47ad-b596-fdf1ad837ae8"
}