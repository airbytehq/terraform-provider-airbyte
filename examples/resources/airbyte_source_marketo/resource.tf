resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  name         = "Merle McCullough"
  secret_id    = "...my_secret_id..."
  workspace_id = "6d74638d-1409-4463-9cf5-dd4a0c05f536"
}