resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey           = "...my_apikey..."
    destination_type = "timeplus"
    endpoint         = "https://us.timeplus.cloud/workspace_id"
  }
  name         = "Ruben Williamson"
  workspace_id = "5f350d8c-db5a-4341-8143-010421813d52"
}