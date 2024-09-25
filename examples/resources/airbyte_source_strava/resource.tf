resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "b2343891-f649-4697-8812-8b0429b50eba"
  name          = "Angel Franey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20deac9b-b7b4-45d9-a074-3b024bc119f8"
}