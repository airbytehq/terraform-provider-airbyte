resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "0a2e7cfe-6f34-4acc-a5c5-6f5fa6778e44"
  name          = "Alejandro Carroll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "15d12804-0ba0-43eb-bc0a-fcc3c8fa6eaf"
}