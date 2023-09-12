resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "omnisend"
  }
  name         = "Lynn Miller"
  secret_id    = "...my_secret_id..."
  workspace_id = "3e5953c0-0113-4986-baa4-1e6c31cc2f1f"
}