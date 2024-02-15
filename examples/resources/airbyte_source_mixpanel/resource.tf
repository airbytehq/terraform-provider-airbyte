resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 1
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 10
    end_date                     = "2021-11-16"
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = false
    start_date                   = "2021-11-16"
  }
  definition_id = "8729ff50-24b6-490b-a736-f2f7a3b95d4a"
  name          = "Lucas Reichert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dfbbab6a-d0e4-44a4-9c97-0c078573a20a"
}