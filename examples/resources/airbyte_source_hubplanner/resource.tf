resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "95b5ae04-23a6-4249-a514-955fa2ea25a5"
  name          = "Rosemarie Kulas Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e389cc42-00a4-4abb-b299-a611cc7be3e8"
}