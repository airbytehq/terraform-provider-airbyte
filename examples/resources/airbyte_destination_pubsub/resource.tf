resource "airbyte_destination_pubsub" "my_destination_pubsub" {
  configuration = {
    additional_properties            = "{ \"see\": \"documentation\" }"
    batching_delay_threshold         = 10
    batching_element_count_threshold = 10
    batching_enabled                 = true
    batching_request_bytes_threshold = 5
    credentials_json                 = "...my_credentials_json..."
    ordering_enabled                 = false
    project_id                       = "...my_project_id..."
    topic_id                         = "...my_topic_id..."
  }
  definition_id = "df92d7e3-59fc-4984-811b-a60c95e88972"
  name          = "...my_name..."
  workspace_id  = "d57f528a-f49b-4b8c-91c8-620eafc0353a"
}