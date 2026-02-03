resource "airbyte_source_help_scout" "my_source_helpscout" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    start_date            = "2022-08-01T01:51:06.502Z"
  }
  definition_id = "4c8b8f51-7a25-4c17-a1ed-10ca39d831ee"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "27ae639f-32a2-4107-9640-154f690b48dc"
}