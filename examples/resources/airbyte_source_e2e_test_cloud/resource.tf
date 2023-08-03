resource "airbyte_source_e2e_test_cloud" "my_source_e2etestcloud" {
  configuration = {
    max_messages        = 3
    message_interval_ms = 2
    mock_catalog = {
      stream_schemas = "...my_stream_schemas..."
      type           = "MULTI_STREAM"
    }
    seed        = 42
    source_type = "e2e-test-cloud"
    type        = "CONTINUOUS_FEED"
  }
  name         = "Miss Cary Howe"
  workspace_id = "21f023b7-5d23-467f-a1a0-cc8df79f0a39"
}