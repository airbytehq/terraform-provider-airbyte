resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    password    = "...my_password..."
    source_type = "configcat"
    username    = "Art_Wiegand"
  }
  name         = "Lowell Oberbrunner"
  secret_id    = "...my_secret_id..."
  workspace_id = "5a60a04c-495c-4c69-9171-b51c1bdb1cf4"
}