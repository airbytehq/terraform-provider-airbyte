resource "airbyte_source_nutshell" "my_source_nutshell" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "d543f4ee-899f-483d-bc9c-0ed78215c9ef"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e30714eb-3d8a-4c58-baeb-c6e5dfca72ac"
}