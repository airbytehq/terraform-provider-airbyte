resource "airbyte_source_web_scrapper" "my_source_webscrapper" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "0425ef2d-74bd-44b7-b93c-adeb71a2b34d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "926420fb-63ad-45d7-bc5b-7416709b93af"
}