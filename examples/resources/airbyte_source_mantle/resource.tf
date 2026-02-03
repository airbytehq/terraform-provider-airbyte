resource "airbyte_source_mantle" "my_source_mantle" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-08-31T18:33:58.533Z"
  }
  definition_id = "cd07bc19-e466-4902-adb6-268041233594"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac291437-bf10-439c-a3c9-1a3940f774f6"
}