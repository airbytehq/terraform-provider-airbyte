resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "918db5cc-cbbb-4db3-9196-4f99d67745af"
  name          = "Cecil Hermann IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20bd7a7e-c191-4626-87e6-80e4417c6f4b"
}