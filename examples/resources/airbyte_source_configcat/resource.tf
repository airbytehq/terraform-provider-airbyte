resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    password    = "...my_password..."
    source_type = "configcat"
    username    = "Shaylee.Pfeffer71"
  }
  name         = "Timothy Nolan"
  secret_id    = "...my_secret_id..."
  workspace_id = "24d3b2ec-fcc8-4f89-9010-f5dd3d6fa180"
}