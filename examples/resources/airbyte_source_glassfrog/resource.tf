resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "glassfrog"
  }
  name         = "Hector Satterfield"
  secret_id    = "...my_secretId..."
  workspace_id = "9923b7e1-3584-4f7a-a12c-6891f82ce115"
}