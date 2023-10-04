resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 9
    batching_element_count_threshold = 10
    batching_enabled                 = false
    batching_request_bytes_threshold = 4
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  name         = "Eddie Conroy"
  workspace_id = "2f48f6e5-43a0-4f0f-b9a6-c151a78cf13c"
}