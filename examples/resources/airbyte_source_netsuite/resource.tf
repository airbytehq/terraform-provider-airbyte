resource "airbyte_source_netsuite" "my_source_netsuite" {
  configuration = {
    consumer_key    = "...my_consumer_key..."
    consumer_secret = "...my_consumer_secret..."
    object_types = [
      "...",
    ]
    realm          = "...my_realm..."
    source_type    = "netsuite"
    start_datetime = "2017-01-25T00:00:00Z"
    token_key      = "...my_token_key..."
    token_secret   = "...my_token_secret..."
    window_in_days = 5
  }
  name         = "Judy Towne"
  secret_id    = "...my_secret_id..."
  workspace_id = "d617c3b0-d51a-444b-b01b-ad8706d46082"
}