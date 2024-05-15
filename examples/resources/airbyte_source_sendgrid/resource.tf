resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-02-02T23:10:02.911Z"
  }
  definition_id = "ad703a4e-eb23-4fe5-9394-2b58b6d0d209"
  name          = "Ashley Shanahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88d8619e-c398-4117-86e4-4e5272c20971"
}