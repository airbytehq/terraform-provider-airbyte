resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "b13a43b1-ead7-403a-8eeb-23fe553942b5"
  name          = "Jonathon Jerde PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20932d7e-88d8-4619-ac39-811786e44e52"
}