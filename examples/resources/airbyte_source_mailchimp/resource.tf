resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
    start_date = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "c79293e2-8aa8-4190-b348-b38fe3b52011"
  name          = "Ms. Beatrice Ratke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "52a784d2-d0f1-4707-875e-2d6a49780ba1"
}