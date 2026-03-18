resource "airbyte_source_buzzsprout" "my_source_buzzsprout" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    podcast_id            = "...my_podcast_id..."
    start_date            = "2021-01-02T16:36:23.396Z"
  }
  definition_id = "6ad23bfc-cb11-4faa-a243-f9ccdb0145cc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e2d1632-6917-4150-87aa-55da9f37c37f"
}