resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "c87aaffe-b9ea-4290-b7e9-f4166b42b69c"
  name          = "Doris Steuber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bbad3f0b-f8ca-4743-bfb1-506e5d6deb8b"
}