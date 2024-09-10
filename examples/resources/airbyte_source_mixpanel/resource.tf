resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 5
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 5
    end_date                     = "2021-11-16"
    page_size                    = 6
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = false
    start_date                   = "2021-11-16"
  }
  definition_id = "e08d80f6-94c4-48e9-90f8-4ccbad71dab0"
  name          = "Mrs. Vickie Barrows"
  secret_id     = "...my_secret_id..."
  workspace_id  = "124b6e7b-2083-4a37-b0c9-92762a38aa73"
}