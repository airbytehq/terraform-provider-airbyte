resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 3
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "880f00a3-0dde-4f9a-90fa-7f8f441b58df"
  name          = "Lewis Heaney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0bee1c5f-f223-4389-a042-261684e73ef6"
}