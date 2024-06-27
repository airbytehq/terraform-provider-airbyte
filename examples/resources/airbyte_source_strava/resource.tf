resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "1e537d96-eb6d-45dc-9e25-0f80fbc595c3"
  name          = "Jackie Krajcik"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfe70cf1-47e2-493c-ba4b-2d7bbc290ef0"
}