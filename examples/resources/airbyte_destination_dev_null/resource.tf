resource "airbyte_destination_dev_null" "my_destination_devnull" {
  configuration = {
    test_destination = {
      silent = {}
    }
  }
  definition_id = "807f993e-fae2-4dca-b865-89dab1153f46"
  name          = "Marta Kirlin DDS"
  workspace_id  = "0855aa0d-b797-4942-be7e-5f1f78855663"
}