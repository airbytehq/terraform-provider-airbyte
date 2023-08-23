resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "vantage"
  }
  name         = "Veronica Pagac Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "38e1a735-ac26-4ae3-bbef-971a8f46bca1"
}