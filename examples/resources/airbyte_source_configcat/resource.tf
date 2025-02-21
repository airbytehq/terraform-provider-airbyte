resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "3b7c7a4b-4f66-48de-899f-77af4d977324"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2bc536b-e1b7-409e-9c86-db64c9844ec9"
}