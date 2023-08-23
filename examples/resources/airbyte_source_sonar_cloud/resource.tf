resource "airbyte_source_sonar_cloud" "my_source_sonarcloud" {
  configuration = {
    component_keys = [
      "{ \"see\": \"documentation\" }",
    ]
    end_date     = "YYYY-MM-DD"
    organization = "airbyte"
    source_type  = "sonar-cloud"
    start_date   = "YYYY-MM-DD"
    user_token   = "...my_user_token..."
  }
  name         = "Judy Bogan"
  secret_id    = "...my_secret_id..."
  workspace_id = "8f4d7396-564c-420a-8711-a961d24a7dbb"
}