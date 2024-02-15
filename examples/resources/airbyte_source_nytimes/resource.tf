resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = "1"
    share_type = "facebook"
    start_date = "2022-08"
  }
  definition_id = "db92c72d-541f-4538-928a-50561c1cc629"
  name          = "Sandy Boyle"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b3d761e-29ef-426a-a07d-2b59ab56edb5"
}