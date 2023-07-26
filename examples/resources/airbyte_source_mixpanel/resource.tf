resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 10
    credentials = {
      api_secret   = "...my_api_secret..."
      option_title = "Project Secret"
    }
    date_window_size             = 8
    end_date                     = "2021-11-16"
    project_id                   = 6
    project_timezone             = "UTC"
    region                       = "US"
    select_properties_by_default = true
    source_type                  = "mixpanel"
    start_date                   = "2021-11-16"
  }
  name         = "Leon Cummings"
  workspace_id = "67641a83-12e5-4047-b4c2-1ccb423abcdc"
}