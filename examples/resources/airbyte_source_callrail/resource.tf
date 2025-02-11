resource "airbyte_source_callrail" "my_source_callrail" {
  configuration = {
    account_id = "...my_account_id..."
    api_key    = "...my_api_key..."
    start_date = "%Y-%m-%d"
  }
  definition_id = "5c179e26-8439-4370-b80d-6138f31dcc63"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e980ecb8-6e7f-46d7-ac03-b35200f9fa64"
}