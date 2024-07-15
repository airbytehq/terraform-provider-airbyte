resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 3
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 0
    end_date                     = "2021-11-16"
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = false
    start_date                   = "2021-11-16"
  }
  definition_id = "c03f8392-0634-4c9d-b1c4-26709282f0b3"
  name          = "Nora Waelchi"
  secret_id     = "...my_secret_id..."
  workspace_id  = "729ff502-4b69-40b2-b36f-2f7a3b95d4ab"
}