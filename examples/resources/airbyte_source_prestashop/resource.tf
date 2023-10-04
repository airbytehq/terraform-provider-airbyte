resource "airbyte_source_prestashop" "my_source_prestashop" {
  configuration = {
    access_key = "...my_access_key..."
    start_date = "2022-01-01"
    url        = "...my_url..."
  }
  name         = "Anna Collier Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "3e87b490-ecc6-4bf7-9161-16fc803c8311"
}