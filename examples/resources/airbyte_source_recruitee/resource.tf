resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 4
  }
  definition_id = "f1211e1f-cb26-4b90-8c0d-f941919892a2"
  name          = "Mrs. Sherri Rosenbaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "af7bc34c-463b-4838-9c5f-976535f73a45"
}