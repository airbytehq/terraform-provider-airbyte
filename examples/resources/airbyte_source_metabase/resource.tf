resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Jerad12"
  }
  definition_id = "e389cc42-00a4-4abb-b299-a611cc7be3e8"
  name          = "Ms. Matt Kohler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dc05c92c-2050-4fdf-aba7-d43d20d3384e"
}