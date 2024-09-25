resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 9
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 0
    end_date                     = "2021-11-16"
    page_size                    = 4
    project_timezone             = "US/Pacific"
    region                       = "EU"
    select_properties_by_default = false
    start_date                   = "2021-11-16"
  }
  definition_id = "5b91e126-100f-409e-b706-bb016ea0ac6b"
  name          = "Alfonso Turcotte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "40c173d4-d611-433d-9b2a-95937ced0062"
}