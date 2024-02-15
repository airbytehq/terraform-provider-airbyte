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
    window_in_days = 1
  }
  definition_id = "e45e3ceb-6c91-40dc-95a9-6cb5f3bc4b32"
  name          = "Ethel Towne"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d591e254-44d2-4234-bd1d-8ea1c7d43320"
}