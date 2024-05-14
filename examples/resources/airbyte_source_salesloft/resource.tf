resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "c6128aab-bad0-4730-b82c-3e822825101e"
  name          = "Casey Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "69948d03-8885-41ec-86fd-3b8cc64e95a7"
}