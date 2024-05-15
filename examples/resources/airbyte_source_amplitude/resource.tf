resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "EU Residency Server"
    request_time_range = 5
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "c566b1d1-d8bb-457b-b001-ddb3cf074d62"
  name          = "Mr. Mona Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d069bb2-6e6b-49f2-9aa9-f8c7d4107048"
}