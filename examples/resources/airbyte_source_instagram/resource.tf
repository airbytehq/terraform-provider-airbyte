resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "0d626d48-87cc-4aaf-98e0-f5c1159d6014"
  name          = "Dr. Fredrick Buckridge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfc7f384-ec60-4405-bd04-51918db5cccb"
}