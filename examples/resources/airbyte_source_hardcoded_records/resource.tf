resource "airbyte_source_hardcoded_records" "my_source_hardcodedrecords" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    count                 = 1000
  }
  definition_id = "084124ab-22db-4019-b36d-630418541bf7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e591dd4f-e11b-4336-8225-40e120a5aa45"
}