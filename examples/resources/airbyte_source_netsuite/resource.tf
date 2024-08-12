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
  definition_id = "741ee0bb-ab04-457d-9263-98e6ecd841e7"
  name          = "Jan Kub"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a686faa5-12d8-4044-b05c-5b7112361f26"
}