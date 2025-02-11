resource "airbyte_source_salesflare" "my_source_salesflare" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "187bdf47-7353-4540-8ba5-149e7f6ff4f8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dd6b057f-6f50-4a0e-8b1e-301b5e11ed4a"
}