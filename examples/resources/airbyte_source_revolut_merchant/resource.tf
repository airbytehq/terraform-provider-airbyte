resource "airbyte_source_revolut_merchant" "my_source_revolutmerchant" {
  configuration = {
    api_version    = "...my_api_version..."
    environment    = "sandbox-merchant"
    secret_api_key = "...my_secret_api_key..."
    start_date     = "2021-09-30T15:43:45.883Z"
  }
  definition_id = "915a8368-1a6c-4eda-835a-6af402b038e7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1706bbb8-fce6-4404-b135-95fe8c5156c3"
}