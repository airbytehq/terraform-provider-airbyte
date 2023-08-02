resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key  = "...my_access_key..."
    source_type = "prestashop"
    start_date  = "2022-01-01"
    url         = "...my_url..."
  }
  name         = "Samantha Krajcik"
  secret_id    = "...my_secretId..."
  workspace_id = "9cedbac7-fda3-4959-8d66-bc2ae480632b"
}