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
  definition_id = "7c000ccd-eed1-42bd-9eb7-3d022a608737"
  name          = "Nick Wisoky"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f17c9c1c-9188-4619-80df-c35041fcdcac"
}