resource "airbyte_source_repairshopr" "my_source_repairshopr" {
  configuration = {
    api_key   = "...my_api_key..."
    subdomain = "...my_subdomain..."
  }
  definition_id = "829891bc-f5f0-4c2b-a608-3e859733c50d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "64aa3243-a9cf-42a4-bf8c-cf737fee3313"
}