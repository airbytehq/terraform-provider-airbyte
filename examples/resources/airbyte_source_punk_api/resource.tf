resource "airbyte_source_punk_api" "my_source_punkapi" {
  configuration = {
    brewed_after  = "MM-YYYY"
    brewed_before = "MM-YYYY"
    id            = 22
    source_type   = "punk-api"
  }
  name         = "Darnell Turcotte"
  secret_id    = "...my_secret_id..."
  workspace_id = "540ef53a-34a1-4b8f-a997-31adc05d85ae"
}