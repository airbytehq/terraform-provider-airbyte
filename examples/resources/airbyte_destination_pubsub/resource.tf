resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    additional_properties            = "{ \"see\": \"documentation\" }"
    batching_delay_threshold         = 1
    batching_element_count_threshold = 1
    batching_enabled                 = false
    batching_request_bytes_threshold = 1
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "356668e2-7e34-47f3-a3b0-67a8a481b692"
  name          = "...my_name..."
  workspace_id  = "d57f528a-f49b-4b8c-91c8-620eafc0353a"
}