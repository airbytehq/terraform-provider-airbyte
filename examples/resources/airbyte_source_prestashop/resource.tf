resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key            = "...my_access_key..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2022-01-01"
    url                   = "...my_url..."
  }
  definition_id = "d60a46d4-709f-4092-a6b7-2457f7d455f5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6919f880-78f8-4f27-84d5-724da2f0b39a"
}