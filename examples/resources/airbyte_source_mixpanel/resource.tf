resource "airbyte_source_mixpanel" "my_source_mixpanel" {
  configuration = {
    attribution_window = 4
    credentials = {
      project_secret = {
        api_secret = "...my_api_secret..."
      }
    }
    date_window_size             = 4
    end_date                     = "2021-11-16"
    project_timezone             = "UTC"
    region                       = "US"
    select_properties_by_default = true
    start_date                   = "2021-11-16"
  }
  definition_id = "5d144630-3318-4f29-8f10-b0742b93b499"
  name          = "Doris Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20ccad5a-dc13-430e-b574-88395b5ae042"
}