resource "airbyte_source_alpha_vantage" "my_source_alphavantage" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    adjusted              = false
    api_key               = "...my_api_key..."
    interval              = "60min"
    outputsize            = "full"
    symbol                = "AAPL"
  }
  definition_id = "69b3bad1-6b29-47a1-b9ba-a46cc0e6b003"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f64deb8-8dd7-4b53-aa7a-a188ce863425"
}