resource "airbyte_source_revenuecat" "my_source_revenuecat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-03-29T00:05:27.862Z"
  }
  definition_id = "f680c1a3-0a9e-478a-b106-d3bedca152aa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "08260fec-1942-4dca-8ff4-8f5ece6454de"
}