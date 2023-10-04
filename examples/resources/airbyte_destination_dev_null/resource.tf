resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      destination_dev_null_test_destination_silent = {}
    }
  }
  name         = "Tasha Rodriguez"
  workspace_id = "23613d23-ce87-4529-baec-4aa100bb2392"
}