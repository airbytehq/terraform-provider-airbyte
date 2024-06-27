resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      silent = {}
    }
  }
  definition_id = "02e07129-d464-44f9-9d3d-54c7cfb82ef1"
  name          = "Larry Brekke"
  workspace_id  = "57477c9e-2c85-4c90-8a20-3ff157a47112"
}