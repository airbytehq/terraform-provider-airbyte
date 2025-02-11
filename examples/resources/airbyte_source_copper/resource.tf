resource "airbyte_source_copper" "my_source_copper" {
  configuration = {
    api_key    = "...my_api_key..."
    user_email = "...my_user_email..."
  }
  definition_id = "59bd8645-5979-4e8d-9e56-1c318fc66ba7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e77b88e1-2572-4568-81ef-f4b40bdbe166"
}