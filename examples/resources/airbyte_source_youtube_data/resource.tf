resource "airbyte_source_youtube_data" "my_source_youtubedata" {
  configuration = {
    api_key = "...my_api_key..."
    channel_ids = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "cdb1bde2-4dc4-455f-8a7b-0a7d5c5c78df"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1f932b4-fbce-40e0-ada1-22a9e36747d6"
}