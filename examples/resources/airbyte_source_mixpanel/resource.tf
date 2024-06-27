resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 2
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 8
    end_date                     = "2021-11-16"
    project_timezone             = "UTC"
    region                       = "US"
    select_properties_by_default = false
    start_date                   = "2021-11-16"
  }
  definition_id = "5a531f3b-4802-4a3b-9d67-4976dbe116c7"
  name          = "Raymond Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "70bfb326-67c4-47d5-8361-6107c03f8392"
}