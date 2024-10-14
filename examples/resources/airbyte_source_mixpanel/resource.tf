resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 10
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
      service_account = {
        project_id = 10
        secret     = "...my_secret..."
        username   = "...my_username..."
      }
    }
    date_window_size             = 10
    end_date                     = "2021-11-16"
    page_size                    = 6
    project_timezone             = "US/Pacific"
    region                       = "US"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  definition_id = "ec7b9d35-13cb-4117-b2ed-d8a6874a4325"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "350068e1-f8f0-490a-ba81-d5400042882c"
}