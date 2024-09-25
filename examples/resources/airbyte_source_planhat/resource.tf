resource "airbyte_source_planhat" "my_source_planhat" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "a6744848-ac2b-404b-aae9-e175304065f6"
  name          = "Tara King"
  secret_id     = "...my_secret_id..."
  workspace_id  = "901f87c9-df1a-4f8f-9013-d5d0cf403b28"
}