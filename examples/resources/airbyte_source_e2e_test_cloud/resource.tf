resource "airbyte_source_e2e_test_cloud" "my_source_e2etestcloud" {
  configuration = {
    max_messages        = 2
    message_interval_ms = 4
    mock_catalog = {
      source_e2e_test_cloud_mock_catalog_multi_schema = {
        stream_schemas = "...my_stream_schemas..."
        type           = "MULTI_STREAM"
      }
    }
    seed        = 42
    source_type = "e2e-test-cloud"
    type        = "CONTINUOUS_FEED"
  }
  name         = "Percy Buckridge DDS"
  secret_id    = "...my_secret_id..."
  workspace_id = "c8df79f0-a396-4d90-8364-b7c15dfbace1"
}