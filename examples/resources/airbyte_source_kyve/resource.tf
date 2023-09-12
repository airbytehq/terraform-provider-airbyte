resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages   = 6
    page_size   = 2
    pool_ids    = "0,1"
    source_type = "kyve"
    start_ids   = "0"
    url_base    = "https://api.korellia.kyve.network/"
  }
  name         = "Gail Homenick"
  secret_id    = "...my_secret_id..."
  workspace_id = "94874c2d-5cc4-4972-a33e-66bd8fe5d00b"
}