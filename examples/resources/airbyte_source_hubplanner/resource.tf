resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "85c78fa7-d86b-4df5-bf91-acb121083728"
  name          = "Johnnie Maggio"
  secret_id     = "...my_secret_id..."
  workspace_id  = "51e868df-1f2c-45ad-84a4-6153eb240d62"
}