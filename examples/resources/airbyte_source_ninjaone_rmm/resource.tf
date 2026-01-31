resource "airbyte_source_ninjaone_rmm" "my_source_ninjaonermm" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-09-09T16:42:41.616Z"
  }
  definition_id = "089f886c-069d-4b6c-9463-be7b3f30ff5c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "eeaf7f54-99d0-42a0-ae9c-ddc8ec472861"
}