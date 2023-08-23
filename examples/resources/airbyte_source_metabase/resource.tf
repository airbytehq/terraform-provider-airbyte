resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    source_type      = "metabase"
    username         = "Audrey_Weimann71"
  }
  name         = "Jody Lebsack"
  secret_id    = "...my_secret_id..."
  workspace_id = "71f6c482-52d7-4771-a7fd-074009ef8d29"
}