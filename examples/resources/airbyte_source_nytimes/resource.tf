resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = "1"
    share_type = "facebook"
    start_date = "1851-01"
  }
  definition_id = "517fc88b-c499-48d7-9efe-dea337d55b15"
  name          = "Sabrina Kuvalis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "92c72d54-1f53-4892-8a50-561c1cc6291a"
}