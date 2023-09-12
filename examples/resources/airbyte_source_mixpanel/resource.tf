resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 2
    credentials = {
      source_mixpanel_authentication_wildcard_project_secret = {
        api_secret   = "...my_api_secret..."
        option_title = "Project Secret"
      }
    }
    date_window_size             = 10
    end_date                     = "2021-11-16"
    project_id                   = 7
    project_timezone             = "UTC"
    region                       = "US"
    select_properties_by_default = true
    source_type                  = "mixpanel"
    start_date                   = "2021-11-16"
  }
  name         = "Donald Ernser"
  secret_id    = "...my_secret_id..."
  workspace_id = "f37e4aa8-6855-4596-a732-aa5dcb6682cb"
}