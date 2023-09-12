resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key     = "...my_api_key..."
    since       = "2022-05-30 04:50:23"
    source_type = "delighted"
  }
  name         = "Sarah Collier"
  secret_id    = "...my_secret_id..."
  workspace_id = "14f4cc6f-18bf-4962-9a6a-4f77a87ee3e4"
}