resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 7
    page_size = 4
    pool_ids  = "0,1"
    start_ids = "0,0"
    url_base  = "https://api.korellia.kyve.network/"
  }
  definition_id = "6cb6bf32-faf8-425b-aa4e-c87aaffeb9ea"
  name          = "Geneva Abshire"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e9f4166b-42b6-49c6-9d27-bbad3f0bf8ca"
}