resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "27d8cbc0-547d-4c93-97d7-628c47813582"
  name          = "Edgar Williamson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7d9dfc7f-4585-465e-b155-c9f06b5482c9"
}