resource "airbyte_source_northpass_lms" "my_source_northpasslms" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "7a801121-66a5-4ec4-af2b-ce2e77bbccef"
  name          = "Jennie Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "548be8a7-a9db-4f52-8792-93e28aa81903"
}