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
  definition_id = "fedea337-d55b-4155-98db-92c72d541f53"
  name          = "Marion Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50561c1c-c629-41a1-ad7b-3d761e29ef26"
}