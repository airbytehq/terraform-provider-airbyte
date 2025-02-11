resource "airbyte_source_formbricks" "my_source_formbricks" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6e2d5169-2f90-4e7a-ab12-260332b02a0b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4c6124b8-5246-49bd-a7a2-310cd68af5cf"
}