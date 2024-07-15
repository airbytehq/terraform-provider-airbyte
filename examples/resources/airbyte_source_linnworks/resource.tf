resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2020-11-23T19:16:47.007Z"
    token              = "...my_token..."
  }
  definition_id = "6a0192c4-4771-42b4-a020-8830aabeffb8"
  name          = "Luther Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1059b440-a5f2-4f61-a4e4-66849f7bbeaa"
}