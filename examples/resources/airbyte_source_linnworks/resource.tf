resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2021-05-28T19:44:06.186Z"
    token              = "...my_token..."
  }
  definition_id = "6701054c-1db1-4ce4-9a8f-c7f8e2467264"
  name          = "Adrienne Wisozk"
  secret_id     = "...my_secret_id..."
  workspace_id  = "449eef87-64eb-44b8-b5ea-1fa63f6c0fac"
}