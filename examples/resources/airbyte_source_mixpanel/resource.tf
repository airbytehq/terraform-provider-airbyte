resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 7
    credentials = {
      source_mixpanel_authentication_wildcard_project_secret = {
        api_secret   = "...my_api_secret..."
        option_title = "Project Secret"
      }
    }
    date_window_size             = 4
    end_date                     = "2021-11-16"
    project_id                   = 0
    project_timezone             = "US/Pacific"
    region                       = "EU"
    select_properties_by_default = true
    source_type                  = "mixpanel"
    start_date                   = "2021-11-16"
  }
  name         = "Karla Hoppe"
  secret_id    = "...my_secret_id..."
  workspace_id = "f8ae170e-f03b-45f3-be4a-a86855596673"
}