resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "146c36bb-7337-4bf0-beca-93a8ae78e1e5"
  name          = "Jackie Schuster"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb6d5dc1-e250-4f80-bbc5-95c3777bccfe"
}