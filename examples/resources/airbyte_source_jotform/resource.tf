resource "airbyte_source_jotform" "my_source_jotform" {
  configuration = {
    api_endpoint = {
      basic = {
        url_prefix = "EU"
      }
    }
    api_key    = "...my_api_key..."
    end_date   = "2021-08-10T17:15:31.398Z"
    start_date = "2021-02-10T10:54:29.564Z"
  }
  definition_id = "1ee42495-78a5-4bcb-bc2c-b83b2c4dd4d4"
  name          = "Ada Bartell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41ee0bba-b045-47d9-a639-8e6ecd841e72"
}