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
  definition_id = "86915d33-24b4-4819-bf39-3429d3165dd8"
  name          = "Erika Hills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c61e20db-5f4b-4b11-860c-3a7ba336248b"
}