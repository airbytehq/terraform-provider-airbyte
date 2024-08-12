resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Fatima_Simonis"
  }
  definition_id = "eb8b49c8-2f28-43fd-b1b3-62a3ef9cacc8"
  name          = "Misty Price"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac01647d-c7c2-471c-9044-a25a4f7e4eab"
}