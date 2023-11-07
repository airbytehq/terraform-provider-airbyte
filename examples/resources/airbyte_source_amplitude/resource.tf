resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "EU Residency Server"
    request_time_range = 6
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  name         = "Priscilla Wunsch"
  secret_id    = "...my_secret_id..."
  workspace_id = "ce1dfc1b-2798-4db1-9e64-b83f63d34837"
}