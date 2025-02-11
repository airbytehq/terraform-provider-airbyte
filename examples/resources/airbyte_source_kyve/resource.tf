resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    pool_ids  = "0"
    start_ids = "0"
    url_base  = "https://api.kaon.kyve.network/"
  }
  definition_id = "ed4b0482-1651-4e5f-8d3b-d7bcf37aff6d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad2f5b88-b4e2-4e5a-8b4b-73095935c6cb"
}