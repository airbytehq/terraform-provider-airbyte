resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-06-06"
    url        = "...my_url..."
  }
  name         = "Alberta Langosh"
  secret_id    = "...my_secret_id..."
  workspace_id = "fef8f538-76e3-4de3-8a86-e4df19faac84"
}