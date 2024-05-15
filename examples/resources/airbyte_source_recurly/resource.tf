resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "1fcb26b9-0cc0-4df9-8191-9892a209c167"
  name          = "Tommie Koelpin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "34c463b8-38dc-45f9-b653-5f73a45535ff"
}