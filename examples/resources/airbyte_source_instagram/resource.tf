resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "instagram"
    start_date   = "2017-01-25T00:00:00Z"
  }
  name         = "Joey Upton"
  secret_id    = "...my_secretId..."
  workspace_id = "47f7d3ef-0496-440d-aa18-31c87adf596f"
}