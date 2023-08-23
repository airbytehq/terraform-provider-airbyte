resource "airbyte_destination_timeplus" "my_destination_timeplus" {
  configuration = {
    apikey           = "...my_apikey..."
    destination_type = "timeplus"
    endpoint         = "https://us.timeplus.cloud/workspace_id"
  }
  name         = "Tamara Lang"
  workspace_id = "61d01747-6360-4a15-9b6a-660659a1adea"
}