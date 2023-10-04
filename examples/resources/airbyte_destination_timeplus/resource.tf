resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us.timeplus.cloud/workspace_id"
  }
  name         = "Johanna Kemmer"
  workspace_id = "7afdacad-2c14-4cf1-ba66-83bb76cbdd42"
}