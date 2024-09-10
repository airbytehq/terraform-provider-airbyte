resource "airbyte_source_luma" "my_source_luma" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "b78bed98-212c-4704-ae19-387527d5e3ef"
  name          = "Sara Gibson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0c0b7968-b724-4213-bfe2-e9e26c4c104f"
}