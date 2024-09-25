resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 4
    batching_element_count_threshold = 0
    batching_enabled                 = true
    batching_request_bytes_threshold = 10
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "566dc323-3597-47b0-bbf0-728b7077558c"
  name          = "Jackie Franey"
  workspace_id  = "eaa4356f-389a-4d49-9bc4-fabbf1994382"
}