resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database         = "...my_database..."
    destination_type = "databend"
    host             = "...my_host..."
    password         = "...my_password..."
    port             = 443
    table            = "default"
    username         = "Leo.Purdy"
  }
  name         = "Bobby Kutch V"
  workspace_id = "b3fe49a8-d9cb-4f48-a333-23f9b77f3a41"
}