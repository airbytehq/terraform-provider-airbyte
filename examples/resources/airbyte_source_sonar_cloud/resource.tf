resource "airbyte_source_sonar_cloud" "my_source_sonarcloud" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    component_keys = [
      "{ \"see\": \"documentation\" }"
    ]
    end_date     = "YYYY-MM-DD"
    organization = "airbyte"
    start_date   = "YYYY-MM-DD"
    user_token   = "...my_user_token..."
  }
  definition_id = "3ab1d7d0-1577-4ab9-bcc4-1ff6a4c2c9f2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "331ab424-d7e5-47d4-bafa-cffcae91bac2"
}