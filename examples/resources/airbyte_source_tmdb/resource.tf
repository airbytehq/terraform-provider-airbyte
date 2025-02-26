resource "airbyte_source_tmdb" "my_source_tmdb" {
  configuration = {
    api_key  = "...my_api_key..."
    language = "en-US"
    movie_id = 560
    query    = "Marvel"
  }
  definition_id = "73202377-ef27-4601-a40d-1bef6507db24"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ea5bc0f8-4757-4a94-86aa-b8f71770b36c"
}