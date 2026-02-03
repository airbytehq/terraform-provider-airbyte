resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_with_personal_access_token = {
        personal_access_token = "...my_personal_access_token..."
      }
    }
    num_workers = 1
    organization_export_ids = [
      "..."
    ]
    test_mode = false
  }
  definition_id = "190f0a64-da8f-4fe0-96fe-8f093bde58b4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "04d30e4f-141a-4d2b-bfba-3940b90ad598"
}