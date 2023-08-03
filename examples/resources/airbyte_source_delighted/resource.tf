resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key     = "...my_api_key..."
    since       = "2022-05-30 04:50:23"
    source_type = "delighted"
  }
  name         = "Natalie Hickle"
  workspace_id = "07cfee81-206e-4281-bfa4-a41c480d3f21"
}