resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      silent = {}
    }
  }
  definition_id = "29d4644f-9dd3-4d54-87cf-b82ef1e01ef5"
  name          = "Megan King"
  workspace_id  = "9e2c85c9-04a2-403f-b157-a47112db1eec"
}