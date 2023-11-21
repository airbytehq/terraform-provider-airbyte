resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    credentials = {
      source_okta_api_token = {
        api_token = "...my_api_token..."
      }
    }
    domain     = "...my_domain..."
    start_date = "2022-07-22T00:00:00Z"
  }
  definition_id = "05c5b711-2361-4f26-947b-86cdec1a2bc2"
  name          = "Isaac Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e3ceb6c-910d-4c95-a96c-b5f3bc4b3253"
}