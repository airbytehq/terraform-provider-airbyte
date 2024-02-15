resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 3
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "ce17ccd6-b10d-4638-8d4f-dfb9af007bc0"
  name          = "Miss Ashley Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b057f07c-5466-421b-9ba9-0354f51ed0a8"
}