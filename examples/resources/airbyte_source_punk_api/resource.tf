resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
    source_type   = "punk-api"
  }
  name         = "Santos Langosh"
  secret_id    = "...my_secret_id..."
  workspace_id = "51bd76ee-eb51-48c4-9a1f-ad35512f06d4"
}