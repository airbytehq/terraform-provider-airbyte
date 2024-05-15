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
  definition_id = "1b99ee1e-9605-4660-9b0d-51b3114e9ed5"
  name          = "Dr. Sally Hackett"
  secret_id     = "...my_secret_id..."
  workspace_id  = "612b0e8c-8cf1-41a0-9259-943dfa52a9e4"
}