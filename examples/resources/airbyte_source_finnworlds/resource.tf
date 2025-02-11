resource "airbyte_source_finnworlds" "my_source_finnworlds" {
  configuration = {
    bond_type = [
      "{ \"see\": \"documentation\" }"
    ]
    commodities = [
      "{ \"see\": \"documentation\" }"
    ]
    countries = [
      "{ \"see\": \"documentation\" }"
    ]
    key                      = "...my_key..."
    list                     = "...my_list..."
    list_countries_for_bonds = "...my_list_countries_for_bonds..."
    start_date               = "2022-12-09T16:31:18.258Z"
    tickers = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "7a7615c4-b8cc-4f1f-9ebc-c3b1f702e070"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f5adf817-6e5f-4c8d-b1b8-9201bfb08d95"
}