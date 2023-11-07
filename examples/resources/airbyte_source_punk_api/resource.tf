resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
  }
  name         = "Richard Heller"
  secret_id    = "...my_secret_id..."
  workspace_id = "2040e069-282d-4d6a-92cb-01cbd9faeeda"
}