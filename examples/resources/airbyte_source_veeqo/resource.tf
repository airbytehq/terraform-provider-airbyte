resource "airbyte_source_veeqo" "my_source_veeqo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-22T22:13:58.510Z"
  }
  definition_id = "707c7d95-d41e-41eb-818e-3cf0601dca20"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8bbe4e37-8ad8-4771-b3d4-a7972ee91f3d"
}