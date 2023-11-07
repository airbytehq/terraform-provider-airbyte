resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Vanessa Murray"
  secret_id    = "...my_secret_id..."
  workspace_id = "043ef09e-61b7-45b7-a676-5eab1ad84295"
}