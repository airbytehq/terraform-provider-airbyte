resource "airbyte_source_basecamp" "my_source_basecamp" {
  configuration = {
    account_id             = 2.64
    additional_properties  = "{ \"see\": \"documentation\" }"
    client_id              = "...my_client_id..."
    client_refresh_token_2 = "...my_client_refresh_token_2..."
    client_secret          = "...my_client_secret..."
    start_date             = "2022-08-26T03:34:30.047Z"
  }
  definition_id = "0abc340d-772c-4fa1-8d1d-ebf3be72ab51"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5754212-9126-4098-80cb-b5315a603e73"
}