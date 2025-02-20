resource "airbyte_source_twelve_data" "my_source_twelvedata" {
  configuration = {
    api_key  = "...my_api_key..."
    country  = "...my_country..."
    exchange = "...my_exchange..."
    interval = "2h"
    symbol   = "...my_symbol..."
  }
  definition_id = "7a6e0d70-8ba9-42bf-a8ff-80994e3a2093"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "06acf3c9-e2dd-4948-bfaa-8b1fa4ee280d"
}