resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    shop       = "my-store"
    start_date = "2022-08-02"
  }
  definition_id = "4e1dc4a0-1d44-4fb9-b610-a4d0de91eaa4"
  name          = "Clinton Baumbach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb870eb9-8050-4c39-a745-0657bfd1cb4d"
}