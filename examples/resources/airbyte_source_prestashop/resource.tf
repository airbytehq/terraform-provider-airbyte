resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key  = "...my_access_key..."
    source_type = "prestashop"
    start_date  = "2022-01-01"
    url         = "...my_url..."
  }
  name         = "Kendra D'Amore"
  workspace_id = "76763342-5403-48bf-b597-1e9819055738"
}