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
  name         = "Henrietta Durgan"
  secret_id    = "...my_secret_id..."
  workspace_id = "3dd9dda3-3dcd-4634-83e4-a7a98e4df37e"
}