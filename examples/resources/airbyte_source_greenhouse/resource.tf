resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "greenhouse"
  }
  name         = "Miriam Lowe PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "c766324c-cb06-4c8c-a12d-02529270b8d5"
}