resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey   = "...my_apikey..."
    endpoint = "https://us.timeplus.cloud/workspace_id"
  }
  definition_id = "32a47524-bb49-40aa-b53a-d11902ba1888"
  name          = "Kimberly Cole V"
  workspace_id  = "d193af49-1985-4c92-933c-ae7edb401c23"
}