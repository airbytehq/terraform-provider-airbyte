resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 10
    page_size = 9
    pool_ids  = "0"
    start_ids = "0"
    url_base  = "https://api.kaon.kyve.network/"
  }
  definition_id = "3fe46a14-03ba-41bd-8103-cfb422849b58"
  name          = "Constance Harris"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d79d74aa-20ea-469f-9b1a-975dd1b5a029"
}