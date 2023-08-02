resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    auth_type     = "Client"
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    source_type   = "strava"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Marie Murphy"
  secret_id    = "...my_secretId..."
  workspace_id = "1d24a7db-b8f5-432d-892c-f7812cb512c8"
}