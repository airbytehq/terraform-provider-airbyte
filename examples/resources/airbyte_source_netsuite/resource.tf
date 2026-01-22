resource "airbyte_source_netsuite" "my_source_netsuite" {
  configuration = {
    consumer_key    = "...my_consumer_key..."
    consumer_secret = "...my_consumer_secret..."
    object_types = [
      "..."
    ]
    realm          = "...my_realm..."
    start_datetime = "2017-01-25T00:00:00Z"
    token_key      = "...my_token_key..."
    token_secret   = "...my_token_secret..."
    window_in_days = 0
  }
  definition_id = "3e266fd0-2e6f-40cf-ae62-0b42b8a6f13a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "005525bd-737b-425a-a5bf-19571fa16c7a"
}