resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "ae9f85c7-0173-4805-a6f8-856cdf3fdefb"
  name          = "Harold Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "214f3ffa-48ac-4adc-8640-0b7b58d13a2c"
}