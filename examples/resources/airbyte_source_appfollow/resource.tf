resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "5ff22338-9204-4226-9684-e73ef602c915"
  name          = "Vernon Mills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f5896557-ce17-4ccd-ab10-d6388d4fdfb9"
}