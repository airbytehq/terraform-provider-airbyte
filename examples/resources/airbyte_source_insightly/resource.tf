resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "1e4a8985-c78f-4a7d-86bd-f5bf91acb121"
  name          = "Gwendolyn Durgan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d89e351-e868-4df1-b2c5-ad84a46153eb"
}