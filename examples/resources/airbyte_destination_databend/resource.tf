resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database         = "...my_database..."
    destination_type = "databend"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 443
    table            = "default"
    username         = "Lauryn.Bartoletti50"
  }
  name         = "Gary Mayert"
  workspace_id = "fe49a8d9-cbf4-4863-b323-f9b77f3a4100"
}