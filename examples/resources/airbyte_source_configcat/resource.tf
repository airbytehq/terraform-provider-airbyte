resource "airbyte_source_configcat" "my_source_configcat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "4fd7565c-8b99-439b-80d0-2d965e1d958c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2bc536b-e1b7-409e-9c86-db64c9844ec9"
}