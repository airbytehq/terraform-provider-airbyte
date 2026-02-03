resource "airbyte_source_campaign_monitor" "my_source_campaignmonitor" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = "...my_start_date..."
    username              = "...my_username..."
  }
  definition_id = "e2c30277-8aa6-4955-a5bf-18a2b2bafc4a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0406d390-312b-43e6-9387-97e125e84da6"
}