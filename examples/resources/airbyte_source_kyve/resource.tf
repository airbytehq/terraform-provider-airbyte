resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 3
    page_size = 0
    pool_ids  = "0,1"
    start_ids = "0"
    url_base  = "https://api.kaon.kyve.network/"
  }
  definition_id = "01aad5e5-f9cf-4b0d-9e8d-3acce90aeed1"
  name          = "Penny Koepp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "882d54ce-598c-4c59-ab95-2f06231c57fd"
}