resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "b93b4991-11a3-420c-8ad5-adc1330ef574"
  name          = "Guy Farrell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b5ae0423-a624-49a5-9495-5fa2ea25a51d"
}