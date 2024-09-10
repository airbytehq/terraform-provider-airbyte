resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    auth_token = "...my_auth_token..."
  }
  definition_id = "e6e08096-1d84-4c3f-bc24-f860fce85198"
  name          = "Andrew Cartwright"
  secret_id     = "...my_secret_id..."
  workspace_id  = "726581ee-6770-4fa8-ac1b-a804bd6457a4"
}