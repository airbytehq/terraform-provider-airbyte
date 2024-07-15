resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Lisandro_Champlin"
  }
  definition_id = "4f7e4eab-e3a9-4776-8e79-345d14463033"
  name          = "Priscilla Zulauf"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf10b074-2b93-4b49-9111-a320ccad5adc"
}