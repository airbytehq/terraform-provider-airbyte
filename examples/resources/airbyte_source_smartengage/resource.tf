resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "smartengage"
  }
  name         = "Leah Murphy"
  workspace_id = "4fd61903-9dac-4d38-ad0d-c671dc7f1e3a"
}