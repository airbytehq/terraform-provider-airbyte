resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id          = "382bd7ed-5650-4762-9c58-f4d7396564c2"
    options     = "...my_options..."
    source_type = "spacex-api"
  }
  name         = "Lee Batz Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "a961d24a-7dbb-48f5-b2d8-92cf7812cb51"
}