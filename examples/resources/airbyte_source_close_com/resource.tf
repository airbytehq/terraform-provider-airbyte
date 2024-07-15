resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "d8494dcf-aea5-4500-b801-e9f446900c8f"
  name          = "Geoffrey Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "45cfea08-abdd-4a32-8f6c-373e06663420"
}