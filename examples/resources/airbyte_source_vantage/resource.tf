resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  name         = "Ismael Becker Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "ffd3df11-978b-4385-957e-3c921cc9284a"
}