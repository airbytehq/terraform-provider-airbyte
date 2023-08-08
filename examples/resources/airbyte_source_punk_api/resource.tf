resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
    source_type   = "punk-api"
  }
  name         = "Faith Doyle"
  secret_id    = "...my_secret_id..."
  workspace_id = "ba297be3-e90b-4c40-9f86-8fd52405cb33"
}