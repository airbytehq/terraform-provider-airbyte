resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "ecaf35c1-5b37-479d-be3d-ccb9fd6e1ad7"
  name          = "Stella Balistreri"
  secret_id     = "...my_secret_id..."
  workspace_id  = "320ef50a-8ca7-46b0-83ea-280df1804a67"
}