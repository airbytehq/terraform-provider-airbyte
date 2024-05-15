resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 7
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 4
    end_date                     = "2021-11-16"
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  definition_id = "6249a514-955f-4a2e-a25a-51d7622e389c"
  name          = "Mr. Jay Davis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4abb3299-a611-4cc7-be3e-8ba7188dc05c"
}