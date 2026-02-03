resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us-west-2.timeplus.cloud/workspace_id"
  }
  definition_id = "d43166cf-9bf8-41f3-8eda-35047cfcd627"
  name          = "...my_name..."
  workspace_id  = "3a25c57b-6ce4-4605-b223-5b0f748fcaee"
}