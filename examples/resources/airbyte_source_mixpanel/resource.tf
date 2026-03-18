resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 5
    credentials = {
      service_account = {
        project_id = 10
        secret     = "...my_secret..."
        username   = "...my_username..."
      }
    }
    date_window_size             = 30
    end_date                     = "2021-11-16"
    export_lookback_window       = 0
    num_workers                  = 1
    page_size                    = 1000
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  definition_id = "12928b32-bf0a-4f1e-964f-07e12e37153a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "350068e1-f8f0-490a-ba81-d5400042882c"
}