resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "e65f84c0-7598-458a-bfac-f770c381ff5d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cf45da40-f2db-4128-9e66-10704a98b249"
}