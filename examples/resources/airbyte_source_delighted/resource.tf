resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key     = "...my_api_key..."
    since       = "2022-05-30 04:50:23"
    source_type = "delighted"
  }
  name         = "Peggy Windler"
  secret_id    = "...my_secret_id..."
  workspace_id = "a41c480d-3f21-432a-b031-02d514f4cc6f"
}