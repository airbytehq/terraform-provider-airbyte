resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      api_password = "...my_api_password..."
      auth_method  = "api_password"
    }
    shop        = "...my_shop..."
    source_type = "shopify"
    start_date  = "2021-01-01"
  }
  name         = "Homer Kshlerin IV"
  workspace_id = "1c956716-63c5-430b-9665-163a3638512a"
}