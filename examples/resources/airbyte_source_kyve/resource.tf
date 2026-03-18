resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 2
    page_size = 4
    pool_ids  = "0"
    start_ids = "0"
    url_base  = "https://api.kaon.kyve.network/"
  }
  definition_id = "60a1efcc-c31c-4c63-b508-5b48b6a9f4a6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad2f5b88-b4e2-4e5a-8b4b-73095935c6cb"
}