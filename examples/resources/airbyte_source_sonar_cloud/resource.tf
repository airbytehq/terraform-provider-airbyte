resource "airbyte_source_sonar_cloud" "my_source_sonarcloud" {
  configuration = {
    component_keys = [
      "{ \"see\": \"documentation\" }",
    ]
    end_date     = "YYYY-MM-DD"
    organization = "airbyte"
    start_date   = "YYYY-MM-DD"
    user_token   = "...my_user_token..."
  }
  name         = "Wesley Paucek"
  secret_id    = "...my_secret_id..."
  workspace_id = "4a46153e-b240-4d62-ad48-87ccaaf58e0f"
}