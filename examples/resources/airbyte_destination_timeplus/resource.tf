resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us.timeplus.cloud/workspace_id"
  }
  definition_id = "01e67689-a46f-4396-87c6-bf73724213ca"
  name          = "Melissa Harber"
  workspace_id  = "1e30360f-c0ea-4a50-a81b-c3adb090c013"
}