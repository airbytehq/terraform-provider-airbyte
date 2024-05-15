resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "85f41cf2-efd5-4ed6-85e9-e4deda30dd3c"
  name          = "Rudolph Bayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2fad0584-1308-437d-be5d-e43c907f63cc"
}