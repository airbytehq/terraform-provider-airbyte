resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    max_pages = 6
    page_size = 1
    pool_ids  = "0,1"
    start_ids = "0"
    url_base  = "https://api.korellia.kyve.network/"
  }
  definition_id = "21155c54-9106-409b-a9a9-84e4b07bcaf1"
  name          = "Gwen Stark"
  secret_id     = "...my_secret_id..."
  workspace_id  = "06ac59e7-c8ae-4eeb-89ff-d3753fe46a14"
}