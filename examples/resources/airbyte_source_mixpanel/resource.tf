resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 0
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 3
    end_date                     = "2021-11-16"
    project_timezone             = "UTC"
    region                       = "US"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  definition_id = "a514955f-a2ea-425a-91d7-622e389cc420"
  name          = "Cecilia Gerlach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b3299a61-1cc7-4be3-a8ba-7188dc05c92c"
}