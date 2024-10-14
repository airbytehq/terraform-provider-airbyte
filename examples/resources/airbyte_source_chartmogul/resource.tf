resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "7db955e3-04e1-4a4e-8a18-a248e82427c5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f652492e-d54d-49b1-ad23-ddfd2d8e7250"
}