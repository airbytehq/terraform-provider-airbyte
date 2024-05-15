resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "7a40e885-1a35-441b-a6f5-d90d5a8a349e"
  name          = "Deborah Kris"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dff3818d-be50-4fcb-b2a7-8173abb82e6a"
}