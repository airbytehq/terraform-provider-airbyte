resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Dudley_Weber"
  }
  definition_id = "a5f867ba-5cf8-4db4-8a2c-c4047b120c3e"
  name          = "Clark Bogan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e983f33-bbc2-4f8e-b5b9-5ee5dd11c77a"
}