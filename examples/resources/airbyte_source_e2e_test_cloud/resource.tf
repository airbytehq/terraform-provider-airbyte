resource "airbyte_source_e2e_test_cloud" "my_source_e2etestcloud" {
  configuration = {
    max_messages        = 6
    message_interval_ms = 0
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
  name         = "Gertrude Grant"
  secret_id    = "...my_secret_id..."
  workspace_id = "c15dfbac-e188-4b1c-8ee2-c8c6ce611fee"
}