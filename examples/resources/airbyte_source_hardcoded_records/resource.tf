resource "airbyte_source_hardcoded_records" "my_source_hardcodedrecords" {
  configuration = {
    count = 6
  }
  definition_id = "b2092cef-e8d0-43be-a1c8-1c333b3863e7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e591dd4f-e11b-4336-8225-40e120a5aa45"
}