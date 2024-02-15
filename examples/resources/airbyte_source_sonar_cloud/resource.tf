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
  definition_id = "9eb77003-d033-47f1-8a64-369e4ee32ccb"
  name          = "Eula Hane"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6128f24-36a1-422e-b949-c8198a6bf6f1"
}