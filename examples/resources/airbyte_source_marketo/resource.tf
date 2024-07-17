resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain_url    = "https://000-AAA-000.mktorest.com"
    start_date    = "2020-09-25T00:00:00Z"
  }
  definition_id = "825bea4e-c87a-4aff-ab9e-a290f7e9f416"
  name          = "Bridget Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "69c61d27-bbad-43f0-bf8c-a743bfb1506e"
}