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
  definition_id = "79d20b48-acfd-4c6f-b504-a12b7723cbf0"
  name          = "Andrea Friesen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "822e5327-d8cb-4c05-87dc-93d7d7628c47"
}