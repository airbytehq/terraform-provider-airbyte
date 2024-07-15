resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
    domain     = "...my_domain..."
    start_date = "2022-07-22T00:00:00Z"
  }
  definition_id = "d7b3d761-e29e-4f26-ae07-d2b59ab56edb"
  name          = "Mr. Pearl Ruecker DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cdeed12b-d5eb-473d-822a-608737f9f9cf"
}