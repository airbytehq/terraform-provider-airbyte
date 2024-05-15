resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "f8b9bb48-50d6-454b-a1e7-85de7e327e77"
  name          = "Mr. Cory Halvorson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb569443-12d5-4d5e-aa2d-83c0cc98dd54"
}