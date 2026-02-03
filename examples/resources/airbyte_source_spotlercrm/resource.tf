resource "airbyte_source_spotlercrm" "my_source_spotlercrm" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "3cdff138-9632-419b-a49f-f8589d641aca"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2dd2bec7-e582-4c06-8407-507da7ec5424"
}