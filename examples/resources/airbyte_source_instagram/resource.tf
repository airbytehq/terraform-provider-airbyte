resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    source_type   = "instagram"
    start_date    = "2017-01-25T00:00:00Z"
  }
  name         = "Mae Hoppe"
  secret_id    = "...my_secret_id..."
  workspace_id = "f1ad837a-e80c-41c1-9c95-ba998678fa3f"
}