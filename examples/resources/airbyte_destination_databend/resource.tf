resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database = "...my_database..."
    host     = "...my_host..."
    password = "...my_password..."
    port     = 443
    table    = "default"
    username = "Casimir70"
  }
  name         = "Sheri Howell"
  workspace_id = "5d335e03-abeb-4b71-b58e-872ec68b6d2a"
}