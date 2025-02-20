resource "airbyte_source_northpass_lms" "my_source_northpasslms" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3a05f57f-48df-4de8-a259-2900945271f0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8271ed4e-14cc-456d-8874-6dfd007feb30"
}