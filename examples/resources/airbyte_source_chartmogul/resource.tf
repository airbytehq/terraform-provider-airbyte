resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "94dcfaea-5500-4380-9e9f-446900c8feba"
  name          = "Mamie Green"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fea08abd-da32-48f6-8373-e06663420a6a"
}