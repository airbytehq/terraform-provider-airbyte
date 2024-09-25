resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "a5bbba82-d4c0-4a2c-af78-12475bca9a48"
  name          = "Amber Osinski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0ddc3156-b2ff-4d5d-ac69-da5497add71f"
}