resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 1
    credentials = {
      source_mixpanel_authentication_wildcard_project_secret = {
        api_secret   = "...my_api_secret..."
        option_title = "Project Secret"
      }
    }
    date_window_size             = 9
    end_date                     = "2021-11-16"
    project_id                   = 3
    project_timezone             = "US/Pacific"
    region                       = "EU"
    select_properties_by_default = true
    source_type                  = "mixpanel"
    start_date                   = "2021-11-16"
  }
  name         = "Robyn Runte"
  secret_id    = "...my_secretId..."
  workspace_id = "23abcdc9-1faa-4bdd-88e7-1f6c48252d77"
}