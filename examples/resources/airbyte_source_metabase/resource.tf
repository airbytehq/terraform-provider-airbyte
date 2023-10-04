resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Tyrell_Jacobson73"
  }
  name         = "Malcolm Lindgren"
  secret_id    = "...my_secret_id..."
  workspace_id = "f6afbf36-5d68-47e0-87e3-905b6a417fae"
}