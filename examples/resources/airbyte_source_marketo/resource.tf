resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "f008f118-d815-472f-b24d-1e0e7e708b9f"
  name          = "Ralph Hermiston"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f1370c2-8b27-48d2-9e4e-e4a51abe7bbe"
}