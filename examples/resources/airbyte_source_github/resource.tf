resource "airbyte_source_github" "my_source_github" {
  configuration = {
    api_url = "https://github.com"
    branches = [
      "...",
    ]
    credentials = {
      o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    max_waiting_time = 60
    repositories = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "7f557094-a97b-4635-ad53-391630fd2f13"
  name          = "Lynette Gulgowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ef253f33-ac13-45dc-90f6-3794a97d5acf"
}