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
  definition_id = "d8ebc947-d1a3-46d8-935b-42d9b671ba3d"
  name          = "Dominick Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb3d6269-3ddf-4cad-b2b0-11f085229948"
}