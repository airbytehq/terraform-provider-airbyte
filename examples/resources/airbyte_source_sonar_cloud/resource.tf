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
  name         = "Chelsea Ortiz"
  secret_id    = "...my_secret_id..."
  workspace_id = "5ca8649a-70cf-4d5d-a989-b7206451077d"
}