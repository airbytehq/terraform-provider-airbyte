resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    source_type = "xkcd"
  }
  name         = "Bonnie Steuber"
  secret_id    = "...my_secret_id..."
  workspace_id = "de35f8e0-1bf3-43ea-ab45-402ac1704bf1"
}