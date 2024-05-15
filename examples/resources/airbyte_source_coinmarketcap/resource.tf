resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "3e8783d5-0d4d-42b8-8c50-dc344f66cbf0"
  name          = "Mrs. Perry Nicolas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "994ace41-dc5b-442f-aa22-8e88647f2d42"
}