resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "3a6249a5-1495-45fa-aea2-5a51d7622e38"
  name          = "Lucas Schaefer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "00a4abb3-299a-4611-8c7b-e3e8ba7188dc"
}