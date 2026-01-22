resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "f7ea7cf5-ee69-4179-bac0-eb35d54c52b7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d28578f4-0042-47bf-9e5b-616910005a09"
}