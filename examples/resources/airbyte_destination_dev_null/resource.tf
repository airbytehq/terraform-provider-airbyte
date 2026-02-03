resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    test_destination = {
      silent = {
        additional_properties = "{ \"see\": \"documentation\" }"
        test_destination_type = "SILENT"
      }
    }
  }
  definition_id = "63267a08-3f09-4c32-aaf8-b026c7113191"
  name          = "...my_name..."
  workspace_id  = "cc83846a-3f2a-410d-b012-72b8713131bd"
}