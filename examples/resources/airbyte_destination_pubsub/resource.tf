resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 5
    batching_element_count_threshold = 4
    batching_enabled                 = true
    batching_request_bytes_threshold = 0
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "7a098753-4412-4bc3-a17a-cbe2ad9f3186"
  name          = "Brandy Huels"
  workspace_id  = "7b23d6b8-48f4-4034-ac04-b193fb28918e"
}