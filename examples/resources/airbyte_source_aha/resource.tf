resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "1ff934df-0d75-46d8-b0d9-0daf9186ab63"
  name          = "Lance Pollich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3879ec56-6b1d-41d8-bb57-bf001ddb3cf0"
}