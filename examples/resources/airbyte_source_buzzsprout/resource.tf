resource "airbyte_source_buzzsprout" "my_source_buzzsprout" {
  configuration = {
    api_key    = "...my_api_key..."
    podcast_id = "...my_podcast_id..."
    start_date = "2021-01-02T16:36:23.396Z"
  }
  definition_id = "825e9450-fd21-4d25-a60d-bc286af3156d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e2d1632-6917-4150-87aa-55da9f37c37f"
}