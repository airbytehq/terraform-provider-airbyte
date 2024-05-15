resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 3
  }
  definition_id = "27992f65-a710-45f2-a570-ad372ede1299"
  name          = "Calvin Lynch I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10fd6e7e-c488-416b-8c62-b8975147c3e6"
}