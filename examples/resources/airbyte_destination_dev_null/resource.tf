resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    destination_type = "dev-null"
    test_destination = {
      destination_dev_null_test_destination_silent = {
        test_destination_type = "SILENT"
      }
    }
  }
  name         = "Miss Billie Ward"
  workspace_id = "cf4b9218-79fc-4e95-bf73-ef7fbc7abd74"
}