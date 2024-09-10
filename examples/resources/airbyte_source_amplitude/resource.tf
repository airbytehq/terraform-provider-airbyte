resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "Standard Server"
    request_time_range = 5
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "b2a875a1-ca19-40e9-9bd1-182a17eb0af6"
  name          = "Teri Wehner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "73356f39-bea5-4e20-89f0-e8905c8543b9"
}