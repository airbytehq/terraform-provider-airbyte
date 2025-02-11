resource "airbyte_source_freshservice" "my_source_freshservice" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.freshservice.com"
    start_date  = "2020-10-01T00:00:00Z"
  }
  definition_id = "7323b15e-a556-41bf-9184-747295d9377c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "523a07d1-c20b-43f1-b999-23d34aaddfb9"
}