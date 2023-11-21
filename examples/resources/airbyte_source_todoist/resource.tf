resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    token = "...my_token..."
  }
  definition_id = "fdefbe19-9921-44f3-bfa4-8acadc06400b"
  name          = "Kristy Hilpert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13a2ccf2-b1ad-4e2f-8984-bfb0e1b3d2b8"
}