resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "198a6bf6-f1cb-4db3-9a96-cd0e48f1e4b3"
  name          = "Elaine Johnson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ca0b303-cf01-47cd-9783-63f1be7e9b4a"
}