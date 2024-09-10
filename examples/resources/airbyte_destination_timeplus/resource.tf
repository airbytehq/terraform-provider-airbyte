resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us-west-2.timeplus.cloud/workspace_id"
  }
  definition_id = "d7fd7136-64c8-4ab0-88c2-48e91396f340"
  name          = "Samantha Gleason"
  workspace_id  = "500686d0-4e60-4803-9bc7-eb0732a47524"
}