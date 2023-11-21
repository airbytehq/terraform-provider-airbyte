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
  definition_id = "d259943d-fa52-4a9e-875a-bffba2c1e7b6"
  name          = "Jose Lindgren"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d761f19b-60aa-4080-8c97-1e60235dc09f"
}