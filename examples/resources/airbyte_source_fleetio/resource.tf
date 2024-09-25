resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token = "...my_account_token..."
    api_key       = "...my_api_key..."
  }
  definition_id = "c8fd2a7f-940d-4ec4-8e21-6dff8929e4d2"
  name          = "Miss Genevieve Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "94f7d68d-64a8-410b-a959-587ed0c47c0f"
}