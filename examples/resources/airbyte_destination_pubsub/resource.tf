resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 5
    batching_element_count_threshold = 7
    batching_enabled                 = false
    batching_request_bytes_threshold = 0
    credentials_json                 = "...my_credentials_json..."
    destination_type                 = "pubsub"
    ordering_enabled                 = true
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  name         = "Ryan Littel"
  workspace_id = "86bc173d-689e-4ee9-926f-8d986e881ead"
}