resource "airbyte_destination_databend" "my_destination_databend" {
  configuration = {
    database = "...my_database..."
    host     = "...my_host..."
    password = "...my_password..."
    port     = 443
    table    = "default"
    username = "Kira78"
  }
  definition_id = "006aecee-7c88-4461-9655-998ae24eec56"
  name          = "Josefina Rosenbaum"
  workspace_id  = "48d71917-bd77-4158-87e0-4c579843cbfb"
}