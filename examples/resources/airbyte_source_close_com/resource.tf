resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "22d15b82-8621-4a87-bd2e-625cdd80ba5f"
  name          = "Darrell Erdman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fc10ca67-a827-4c3d-b49f-444d8a8589d8"
}