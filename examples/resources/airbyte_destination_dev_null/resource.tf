resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    destination_type = "dev-null"
    test_destination = {
      destination_dev_null_test_destination_silent = {
        test_destination_type = "SILENT"
      }
    }
  }
  name         = "Rene Hane"
  workspace_id = "a0d446ce-2af7-4a73-8f3b-e453f870b326"
}