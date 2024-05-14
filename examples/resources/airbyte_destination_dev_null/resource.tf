resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      silent = {}
    }
  }
  definition_id = "e802e071-29d4-4644-b9dd-3d54c7cfb82e"
  name          = "Mr. Ralph Tremblay"
  workspace_id  = "f57477c9-e2c8-45c9-84a2-03ff157a4711"
}