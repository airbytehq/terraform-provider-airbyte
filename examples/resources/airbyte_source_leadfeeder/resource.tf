resource "airbyte_source_leadfeeder" "my_source_leadfeeder" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "2022-09-13T08:51:10.446Z"
  }
  definition_id = "a25a4f7e-4eab-4e3a-9776-8e79345d1446"
  name          = "Ruth Dooley IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f29cf10b-0742-4b93-b499-111a320ccad5"
}