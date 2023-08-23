resource "airbyte_source_public_apis" "my_source_publicapis" {
  configuration = {
    source_type = "public-apis"
  }
  name         = "James McLaughlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "dfed5540-ef53-4a34-a1b8-fe99731adc05"
}