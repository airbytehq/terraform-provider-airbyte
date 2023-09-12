resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 7
    batching_element_count_threshold = 5
    batching_enabled                 = true
    batching_request_bytes_threshold = 3
    credentials_json                 = "...my_credentials_json..."
    destination_type                 = "pubsub"
    ordering_enabled                 = true
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  name         = "Phil Boyer"
  workspace_id = "f86bc173-d689-4eee-9526-f8d986e881ea"
}