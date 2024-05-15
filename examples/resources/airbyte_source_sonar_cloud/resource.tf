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
  definition_id = "47d95358-a568-419d-aabe-c21d7e3d24df"
  name          = "Luis Stiedemann Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "342f997d-059d-438a-ae5f-cf99c41876fa"
}