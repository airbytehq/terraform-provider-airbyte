resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 5
    batching_element_count_threshold = 5
    batching_enabled                 = true
    batching_request_bytes_threshold = 3
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = true
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "b6294a31-a29a-4af3-8680-70eca1537042"
  name          = "Ada Harber"
  workspace_id  = "e54dc306-1658-46b7-b990-fea69beba7dc"
}