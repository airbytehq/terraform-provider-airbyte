resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us-west-2.timeplus.cloud/workspace_id"
  }
  definition_id = "e91396f3-4075-445d-9006-86d04e608039"
  name          = "Roosevelt Kuphal"
  workspace_id  = "0732a475-24bb-4490-aa75-3ad11902ba18"
}