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
  definition_id = "47c3e6c8-bd1c-4cca-93b1-c40652931936"
  name          = "Patsy Rowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "83b58652-384b-4db8-a1f9-c8efa40dc207"
}