resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    source_type      = "metabase"
    username         = "Flavio_Bode98"
  }
  name         = "Wallace Wilderman"
  secret_id    = "...my_secretId..."
  workspace_id = "02bfdc34-5084-41f1-b644-56379f3fb27e"
}