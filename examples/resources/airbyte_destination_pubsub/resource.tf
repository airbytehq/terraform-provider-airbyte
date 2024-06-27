resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    batching_delay_threshold         = 10
    batching_element_count_threshold = 2
    batching_enabled                 = true
    batching_request_bytes_threshold = 6
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = true
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "d49dbc4f-abbf-4199-8382-023b4de2c1a7"
  name          = "Bobby Lemke"
  workspace_id  = "d3cde3c9-d6fa-494b-b4b9-38f85ce1dfc1"
}