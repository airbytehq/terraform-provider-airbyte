resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 6
    credentials = {
      source_mixpanel_authentication_wildcard_project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 10
    end_date                     = "2021-11-16"
    project_id                   = 3
    project_timezone             = "US/Pacific"
    region                       = "EU"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  name         = "Peggy Cormier"
  secret_id    = "...my_secret_id..."
  workspace_id = "a41c80b2-3345-4c94-9a95-559f5a34ff68"
}