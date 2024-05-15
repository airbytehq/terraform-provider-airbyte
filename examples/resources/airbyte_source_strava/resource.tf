resource "airbyte_source_strava" "my_source_strava" {
  configuration = {
    athlete_id    = 17831421
    client_id     = "12345"
    client_secret = "fc6243f283e51f6ca989aab298b17da125496f50"
    refresh_token = "fc6243f283e51f6ca989aab298b17da125496f50"
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "03d0337f-10a6-4436-9e4e-e32ccb4d52da"
  name          = "Julie Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2436a122-e394-49c8-998a-6bf6f1cbdb35"
}