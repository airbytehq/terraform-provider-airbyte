resource "airbyte_source_savvycal" "my_source_savvycal" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "2e5327d8-cbc0-4547-9c93-d7d7628c4781"
  name          = "Sally Lockman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f537d9d-fc7f-4458-965e-7155c9f06b54"
}