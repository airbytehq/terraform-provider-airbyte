resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-12-06T09:47:32.658Z"
  }
  definition_id = "778ddd10-910d-4e87-9fe7-01edbd0d10cf"
  name          = "Stella Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72b8aa55-d63f-4b2a-a3da-0917a6151fac"
}