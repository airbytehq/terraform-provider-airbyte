resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Efren_Mante15"
  }
  definition_id = "f283fdf1-b362-4a3e-b9ca-cc879ba7ac01"
  name          = "Gail Kirlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c271c50-44a2-45a4-b7e4-eabe3a97768e"
}