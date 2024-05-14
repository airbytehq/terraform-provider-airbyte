resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "474281bb-54df-4f6c-b9b7-9e232888b6bd"
  name          = "Mrs. Fred Heidenreich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a52da80f-2bfa-4498-93a6-950935ad536c"
}