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
    window_in_days = 5
  }
  definition_id = "b7242137-fe2e-49e2-ac4c-104f1dbe3b1f"
  name          = "Ramona Bahringer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "77573847-65c7-4741-8014-d1f263651b77"
}