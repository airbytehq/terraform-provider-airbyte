resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    source_type   = "marketo"
    start_date    = "2020-09-25T00:00:00Z"
  }
  name         = "Jerome Berge"
  secret_id    = "...my_secret_id..."
  workspace_id = "b4c21ccb-423a-4bcd-891f-aabdd88e71f6"
}