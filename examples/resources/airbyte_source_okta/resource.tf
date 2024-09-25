resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
    domain     = "...my_domain..."
    start_date = "2022-07-22T00:00:00Z"
  }
  definition_id = "3303ab04-5c89-41fe-9c8d-cb6cc1cd73d2"
  name          = "Mr. Jerald Gorczany"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6d5989e7-dbac-4e40-85a6-307276c58b5d"
}