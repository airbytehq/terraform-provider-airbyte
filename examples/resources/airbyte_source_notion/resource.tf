resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "7b86cdec-1a2b-4c2b-81e4-5e3ceb6c910d"
  name          = "Terrence Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6cb5f3bc-4b32-453e-abd5-91e25444d223"
}