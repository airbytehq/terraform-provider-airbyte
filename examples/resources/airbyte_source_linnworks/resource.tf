resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2021-08-06T10:11:21.935Z"
    token              = "...my_token..."
  }
  definition_id = "0df86503-c474-43ee-b9bd-13e204659bbd"
  name          = "Vernon Huels DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e20259c-6b13-4998-93fc-5430ae066d4a"
}