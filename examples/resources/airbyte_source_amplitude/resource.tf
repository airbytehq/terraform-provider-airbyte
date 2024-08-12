resource "airbyte_source_amplitude" "my_source_amplitude" {
  configuration = {
    api_key            = "...my_api_key..."
    data_region        = "EU Residency Server"
    request_time_range = 5
    secret_key         = "...my_secret_key..."
    start_date         = "2021-01-25T00:00:00Z"
  }
  definition_id = "21b517b1-6f1f-4884-abcd-5137451945c4"
  name          = "Mrs. Sylvia Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ae8aa3c-4f28-4791-bb86-68105e1180fb"
}