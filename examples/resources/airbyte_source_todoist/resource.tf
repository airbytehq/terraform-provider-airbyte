resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    token = "...my_token..."
  }
  name         = "Sammy Lemke"
  secret_id    = "...my_secret_id..."
  workspace_id = "8fddacae-8261-4af8-b9bb-4850d654be1e"
}