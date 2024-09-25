resource "airbyte_source_buzzsprout" "my_source_buzzsprout" {
  configuration = {
    api_key    = "...my_api_key..."
    podcast_id = "...my_podcast_id..."
    start_date = "2022-12-25T14:11:43.769Z"
  }
  definition_id = "238eba13-61d3-4c00-8fe1-ba68d340502b"
  name          = "Ricardo Altenwerth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "febd39e6-abf1-47c2-950c-b6e6ff332bdf"
}