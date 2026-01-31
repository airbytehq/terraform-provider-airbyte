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
  definition_id = "7f83e02e-6105-47f7-a3a0-6864ef9074e7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "331ab424-d7e5-47d4-bafa-cffcae91bac2"
}