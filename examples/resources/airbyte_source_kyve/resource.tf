resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 0
    page_size = 0
    pool_ids  = "0"
    start_ids = "0"
    url_base  = "https://api.beta.kyve.network/"
  }
  definition_id = "be9a984e-4b07-4bca-b13e-d5606ac59e7c"
  name          = "Wilbur Turcotte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b09ffd37-53fe-446a-9403-ba1bd8103cfb"
}