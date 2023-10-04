resource "airbyte_source_e2e_test_cloud" "my_source_e2etestcloud" {
  configuration = {
    max_messages        = 3
    message_interval_ms = 2
    mock_catalog = {
      source_e2e_test_cloud_mock_catalog_multi_schema = {
        stream_schemas = "...my_stream_schemas..."
      }
    }
    seed = 42
  }
  name         = "Angel Pagac"
  secret_id    = "...my_secret_id..."
  workspace_id = "a6ef9fc3-c374-44fd-a52e-57aa673d2825"
}