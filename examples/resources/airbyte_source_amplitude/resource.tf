resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 2
    secret_key         = "...my_secret_key..."
    source_type        = "amplitude"
    start_date         = "2021-01-25T00:00:00Z"
  }
  name         = "Sadie Kemmer"
  secret_id    = "...my_secret_id..."
  workspace_id = "4efb0b34-896c-43ca-9acf-be2fd5707577"
}