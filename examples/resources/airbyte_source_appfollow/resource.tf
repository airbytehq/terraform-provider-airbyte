resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "3ce6c3cf-0d0e-420d-a16b-8da7b8143f85"
  name          = "Jacquelyn Wilderman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c7fd70e5-0457-4dcf-8f64-874e62c58d87"
}