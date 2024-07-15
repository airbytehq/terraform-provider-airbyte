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
    window_in_days = 8
  }
  definition_id = "5b711236-1f26-4d47-b86c-dec1a2bc2b81"
  name          = "Francisco Hegmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ceb6c910-dc95-4a96-8b5f-3bc4b3253e6b"
}