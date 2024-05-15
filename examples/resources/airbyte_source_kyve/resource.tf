resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 1
    page_size = 8
    pool_ids  = "0,1"
    start_ids = "0,0"
    url_base  = "https://api.korellia.kyve.network/"
  }
  definition_id = "6e05b1e5-0c14-4468-9231-cdd98f81edee"
  name          = "Jerry Quitzon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e723eeaf-419b-4c59-a04a-869e9d149f3b"
}