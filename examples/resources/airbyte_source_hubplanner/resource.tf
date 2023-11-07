resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Clarence Hodkiewicz"
  secret_id    = "...my_secret_id..."
  workspace_id = "c187087d-37ac-499f-9785-1612305e0c1f"
}