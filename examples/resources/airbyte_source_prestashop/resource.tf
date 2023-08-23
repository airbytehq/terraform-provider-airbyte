resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key  = "...my_access_key..."
    source_type = "prestashop"
    start_date  = "2022-01-01"
    url         = "...my_url..."
  }
  name         = "Drew Adams"
  secret_id    = "...my_secret_id..."
  workspace_id = "ca77aeb7-b702-41a5-a046-b64e99fb0e67"
}