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
  name         = "Mildred Rosenbaum"
  secret_id    = "...my_secret_id..."
  workspace_id = "43ad2daa-784a-4ba3-9230-edf73811a115"
}