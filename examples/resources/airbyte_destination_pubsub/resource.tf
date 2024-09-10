resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 10
    batching_element_count_threshold = 10
    batching_enabled                 = false
    batching_request_bytes_threshold = 1
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "db6fe086-4a85-46a0-8170-ff8566dc3233"
  name          = "Belinda Kuhn"
  workspace_id  = "07bf0728-b707-4755-8c67-348eaa4356f3"
}