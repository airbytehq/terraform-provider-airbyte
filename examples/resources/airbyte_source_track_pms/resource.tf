resource "airbyte_source_track_pms" "my_source_trackpms" {
  configuration = {
    api_key         = "...my_api_key..."
    api_secret      = "...my_api_secret..."
    customer_domain = "...my_customer_domain..."
  }
  definition_id = "e8ced07e-d69f-4b60-8609-1c0b4e7748a5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8a82f75-4d25-4a9a-969a-b19d3e79955e"
}