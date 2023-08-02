resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    source_type   = "marketo"
    start_date    = "2020-09-25T00:00:00Z"
  }
  name         = "Darrin Kohler"
  secret_id    = "...my_secretId..."
  workspace_id = "a18a7822-bf95-4894-a686-1adb55f9e5d7"
}