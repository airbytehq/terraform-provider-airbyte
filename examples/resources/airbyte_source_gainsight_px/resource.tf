resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "8d89e351-e868-4df1-b2c5-ad84a46153eb"
  name          = "April Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "26d4887c-caaf-458e-8f5c-1159d6014991"
}