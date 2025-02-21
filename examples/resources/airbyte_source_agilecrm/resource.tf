resource "airbyte_source_agilecrm" "my_source_agilecrm" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "...my_domain..."
    email   = "...my_email..."
  }
  definition_id = "0f0e09bf-f2a4-41eb-8f71-416741020723"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0054785a-0f86-43a0-897d-e5aca7bc2d9e"
}