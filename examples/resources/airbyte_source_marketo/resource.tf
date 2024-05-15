resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "6e9fdef5-41f0-46ca-93b1-e89c1488faa4"
  name          = "Frances Simonis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "922269c9-d648-4f0b-8cdd-2e95af6ed3c4"
}