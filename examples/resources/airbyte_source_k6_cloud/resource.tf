resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "8167f705-481a-4011-bf86-48d2ce173617"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f855f74-3cb3-482c-8825-930ccf418ca0"
}