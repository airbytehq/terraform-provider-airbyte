resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "49f7bbea-aef5-4240-83cb-4c473e8c7bd5"
  name          = "Ms. Dennis Hintz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a553fda4-1daf-4762-aef5-1c5fa52e0c6c"
}