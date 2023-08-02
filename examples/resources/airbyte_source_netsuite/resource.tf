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
    window_in_days = 9
  }
  name         = "Guy Feest"
  secret_id    = "...my_secretId..."
  workspace_id = "f7a79cd7-2cd2-4484-9a21-729f2ac41ef5"
}