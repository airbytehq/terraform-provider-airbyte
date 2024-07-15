resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "EU Residency Server"
    request_time_range = 6
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "afeef69e-ad1e-45d3-a90e-fc6e828b1d2d"
  name          = "Wm Herman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a9ea927c-ae7b-429c-85e6-b85628652e0f"
}