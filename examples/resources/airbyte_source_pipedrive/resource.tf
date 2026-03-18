resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    additional_properties  = "{ \"see\": \"documentation\" }"
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "d8286229-c680-4063-8c59-23b9b391c700"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "09d58107-79a7-4e46-8d32-f0e8063bd034"
}