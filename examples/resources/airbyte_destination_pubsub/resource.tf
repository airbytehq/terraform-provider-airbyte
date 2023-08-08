resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 10
    batching_element_count_threshold = 6
    batching_enabled                 = false
    batching_request_bytes_threshold = 9
    credentials_json                 = "...my_credentials_json..."
    destination_type                 = "pubsub"
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  name         = "Frankie Metz"
  workspace_id = "e922a57a-15be-43e0-a080-7e2b6e3ab884"
}