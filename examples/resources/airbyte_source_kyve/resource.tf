resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 6
    page_size = 10
    pool_ids  = "0"
    start_ids = "0,0"
    url_base  = "https://api.beta.kyve.network/"
  }
  name         = "Lisa Barrows"
  secret_id    = "...my_secret_id..."
  workspace_id = "3cc123e8-783d-450d-8d2b-80c50dc344f6"
}