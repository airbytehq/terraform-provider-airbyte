resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  definition_id = "4a4cd606-ed40-4f24-92ed-025d55b2820e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6919f880-78f8-4f27-84d5-724da2f0b39a"
}