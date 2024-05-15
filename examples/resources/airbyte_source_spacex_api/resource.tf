resource "airbyte_source_spacex_api" "my_source_spacexapi" {
  configuration = {
    id      = "75abffba-2c1e-47b6-908e-cd761f19b60a"
    options = "...my_options..."
  }
  definition_id = "a0804c97-1e60-4235-9c09-fadad73b79d2"
  name          = "Gayle Grady"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfdc6fb5-04a1-42b7-b23c-bf0223ae822e"
}