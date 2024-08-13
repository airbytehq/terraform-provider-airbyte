resource "airbyte_permission" "my_permission" {
  organization_id = "eebc230b-1509-44cc-a185-4edb75e7d1c9"
  permission_type = "workspace_reader"
  user_id         = "dc2da362-faf1-4b28-be26-cb1bb0550b4e"
  workspace_id    = "344126e7-f293-436e-a378-18d15373da8d"
}