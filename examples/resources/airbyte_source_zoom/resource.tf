resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token   = "...my_jwt_token..."
    source_type = "zoom"
  }
  name         = "Ron Padberg"
  secret_id    = "...my_secret_id..."
  workspace_id = "62e97261-fb0c-458d-a7b5-1996b5b4b50e"
}