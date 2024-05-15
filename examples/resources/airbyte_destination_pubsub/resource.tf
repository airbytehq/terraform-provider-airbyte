resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 7
    batching_element_count_threshold = 1
    batching_enabled                 = false
    batching_request_bytes_threshold = 8
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = true
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "6fe0864a-856a-4041-b0ff-8566dc323359"
  name          = "Ms. Lillie Powlowski"
  workspace_id  = "f0728b70-7755-48c6-b348-eaa4356f389a"
}