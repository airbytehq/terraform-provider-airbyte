resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "smartengage"
  }
  name         = "Carmen Crist"
  secret_id    = "...my_secret_id..."
  workspace_id = "fbaf9476-a2ae-48dc-850c-8a3512c73784"
}