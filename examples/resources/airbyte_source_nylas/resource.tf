resource "airbyte_source_nylas" "my_source_nylas" {
  configuration = {
    api_key    = "...my_api_key..."
    api_server = "eu"
    end_date   = "2022-02-18T14:25:06.717Z"
    start_date = "2022-12-31T00:40:03.353Z"
  }
  definition_id = "f027f790-818b-456c-b36c-6b6af987f476"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9d6c7c7d-7959-4953-bcd5-b3a9f11d1c45"
}