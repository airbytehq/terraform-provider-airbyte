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
  definition_id = "2c277a8e-2388-4fd0-920f-62c51a2676b4"
  name          = "Sergio Crooks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad19d25d-5253-4fa0-aef0-08f118d81572"
}