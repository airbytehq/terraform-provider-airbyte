resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 5
    batching_element_count_threshold = 8
    batching_enabled                 = false
    batching_request_bytes_threshold = 7
    credentials_json                 = "...my_credentials_json..."
    destination_type                 = "pubsub"
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  name         = "Irvin Rath"
  workspace_id = "a5aa8e48-24d0-4ab4-8750-88e51862065e"
}