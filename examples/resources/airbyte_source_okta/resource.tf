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
  definition_id = "b83b2c4d-d4d4-4290-b741-ee0bbab0457d"
  name          = "Clarence Huel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e6ecd84-1e72-4a76-aa68-6faa512d8044"
}