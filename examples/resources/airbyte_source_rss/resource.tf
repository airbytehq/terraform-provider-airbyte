resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  name         = "Colleen Frami"
  secret_id    = "...my_secret_id..."
  workspace_id = "9a8d0acc-9948-4b00-a105-9fac1d6c9b0f"
}