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
    window_in_days = 9
  }
  definition_id = "d4796116-8b4f-4a72-a2d2-a48f976dd11d"
  name          = "Brian Marvin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9375f622-7890-4d41-b139-19c925e38651"
}