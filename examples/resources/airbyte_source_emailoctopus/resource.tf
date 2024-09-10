resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "2e94eff2-11ad-4fc7-a1dd-1f80239a9296"
  name          = "Kimberly Schamberger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb11448c-1cd3-4afe-9ef8-5381e22d9fe1"
}