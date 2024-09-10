resource "airbyte_source_basecamp" "my_source_basecamp" {
  configuration = {
    account_id             = 73.8
    client_id              = "...my_client_id..."
    client_refresh_token_2 = "...my_client_refresh_token_2..."
    client_secret          = "...my_client_secret..."
    start_date             = "2021-03-02T21:10:19.438Z"
  }
  definition_id = "a24da51f-b73f-4472-b2e8-bbfe18227a33"
  name          = "Shirley Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "445f49be-6259-49f1-bb5c-61c8d2f7dd6e"
}