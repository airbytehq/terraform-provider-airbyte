resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database         = "...my_database..."
    destination_type = "databend"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 443
    table            = "default"
    username         = "Herminia.Schmeler67"
  }
  name         = "Cory Pfeffer"
  workspace_id = "cf3be453-f870-4b32-ab5a-73429cdb1a84"
}