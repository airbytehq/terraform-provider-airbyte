resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token = "...my_account_token..."
    api_key       = "...my_api_key..."
  }
  definition_id = "0c93eb11-448c-41cd-bafe-5ef85381e22d"
  name          = "Miss Emilio Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2224121e-6315-4be3-86a4-e83994413a7c"
}