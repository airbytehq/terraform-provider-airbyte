resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key  = "...my_access_key..."
    source_type = "prestashop"
    start_date  = "2022-01-01"
    url         = "...my_url..."
  }
  name         = "Evelyn Stracke"
  secret_id    = "...my_secret_id..."
  workspace_id = "2f4f127f-b0e0-4bf1-b821-7978d0acca77"
}