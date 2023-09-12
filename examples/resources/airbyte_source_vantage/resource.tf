resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "vantage"
  }
  name         = "Corey Pacocha"
  secret_id    = "...my_secret_id..."
  workspace_id = "6487c5fc-2b86-42a0-8bef-69e100157630"
}