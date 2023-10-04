resource "airbyte_source_netsuite" "my_source_netsuite" {
  configuration = {
    consumer_key    = "...my_consumer_key..."
    consumer_secret = "...my_consumer_secret..."
    object_types = [
      "...",
    ]
    realm          = "...my_realm..."
    start_datetime = "2017-01-25T00:00:00Z"
    token_key      = "...my_token_key..."
    token_secret   = "...my_token_secret..."
    window_in_days = 4
  }
  name         = "Sylvia Bernhard"
  secret_id    = "...my_secret_id..."
  workspace_id = "ace02f96-b833-4556-b7e4-181b36cf1afc"
}