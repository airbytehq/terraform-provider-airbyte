resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    destination_type = "dev-null"
    test_destination = {
      destination_dev_null_test_destination_silent = {
        test_destination_type = "SILENT"
      }
    }
  }
  name         = "Kari Leannon PhD"
  workspace_id = "446ce2af-7a73-4cf3-be45-3f870b326b5a"
}