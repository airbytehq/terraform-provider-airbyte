resource "airbyte_source_wasabi_stats_api" "my_source_wasabistatsapi" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-09-20T11:18:20.586Z"
  }
  definition_id = "95faf9e5-1fce-4354-992b-4ab57d8480db"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cdec2b41-0e81-4aa1-8df3-96896ab40a29"
}