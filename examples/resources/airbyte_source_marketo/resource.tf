resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "bfb1506e-5d6d-4eb8-b49c-82f283fdf1b3"
  name          = "Judith Pfannerstill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f9cacc87-9ba7-4ac0-9647-dc7c271c5044"
}