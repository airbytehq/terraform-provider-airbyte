resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    shop       = "my-store"
    start_date = "2022-01-27"
  }
  definition_id = "b02fd25c-7727-4b36-b542-81d3e7f0bc64"
  name          = "Moses Thiel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "08c82dc4-0ca1-4ab7-a639-716f1b8331df"
}