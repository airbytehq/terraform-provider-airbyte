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
    window_in_days = 7
  }
  definition_id = "aba25784-141a-421c-8938-ad6fcbb78bed"
  name          = "Mr. Ross Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "704ae193-8752-47d5-a3ef-7246d0c0b796"
}