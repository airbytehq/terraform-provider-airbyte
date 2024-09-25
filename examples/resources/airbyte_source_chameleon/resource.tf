resource "airbyte_source_chameleon" "my_source_chameleon" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-12-14T08:22:45.312Z"
    filter     = "survey"
    limit      = "...my_limit..."
    start_date = "2022-04-19T09:29:33.891Z"
  }
  definition_id = "dff3818d-be50-4fcb-b2a7-8173abb82e6a"
  name          = "Diane Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9256d746-38d1-4409-8639-cf5dd4a0c05f"
}